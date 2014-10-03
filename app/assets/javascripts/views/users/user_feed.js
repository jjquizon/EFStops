EfStops.Views.UserFeed = Backbone.CompositeView.extend({
  template: JST['users/user_feed'],

  initialize: function (options) {
    this.images = this.collection.images();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.collection, "add", this.render);
    this.listenTo(this.images, 'add', this.addImageSubviews);
    this.$el.addClass("clearfix");
    this.$el.addClass("feed-bg");
  },

  render: function() {
    var renderedContent = this.template({
      user: this.model,
      images: this.images
    });
    this.$el.html(renderedContent);
    this.renderImages();
    this.listenForScroll();
    return this;
  },

  renderImages: function () {
    var that = this;
    this.images.each(function (image) {
      that.addImageSubviews(image);
    });
  },

  addImageSubviews: function (image) {
    var imageSubview = new EfStops.Views.FeedSingleImage({ image: image });
    this.addSubview(".feed", imageSubview);
  },

  listenForScroll: function () {
    $(window).off("scroll");
    var throttledCallback = _.throttle(this.nextPage.bind(this), 200);
    $(window).on("scroll", throttledCallback);
  },

  nextPage: function () {
    var self = this;
    if ($(window).scrollTop() > $(document).height() - $(window).height() - 125) {
      if (self.collection.pageNumber < self.collection.totalPages) {
        self.collection.fetch({
          data: { page: self.collection.pageNumber + 1 },
          remove: false,
          wait: false,
        });
      }
    }
  },
});
