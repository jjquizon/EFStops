EfStops.Views.UserFeed = Backbone.View.extend({
  template: JST['users/user_feed'],

  initialize: function (options) {
    this.images = this.collection.images();
    this.listenTo(this.model, "sync add destroy", this.render);
    this.listenTo(this.collection, "add", this.render);
    this.listenTo(this.images, 'add', this.render);
  },

  render: function() {
    var renderedContent = this.template({
      user: this.model,
      images: this.images
    });
    this.$el.html(renderedContent);
    this.listenForScroll();
    return this;
  },

  listenForScroll: function () {
    $(window).off("scroll"); // remove past view's listeners
    var throttledCallback = _.throttle(this.nextPage.bind(this), 200);
    $(window).on("scroll", throttledCallback);
  },

  nextPage: function () {
    var self = this;
    if ($(window).scrollTop() > $(document).height() - $(window).height() - 50) {
      console.log("scrolled to bottom!");
      if (self.collection.pageNumber < self.collection.totalPages) {
        self.collection.fetch({
          data: { page: self.collection.pageNumber + 1 },
          remove: false,
          wait: true,
          success: function (collection, response) {
            console.log("successfully fetched page " + self.collection.pageNumber + " out of " + self.collection.totalPages);
          }
        });
      }
    }
  },
});
