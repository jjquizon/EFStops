EfStops.Views.WhatsNew = Backbone.CompositeView.extend({
  template: JST["images/whats_new"],

  initialize: function (options) {
    this.images = this.collection.images();
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.images, 'add', this.render);
    this.$el.addClass("clearfix");
  },

  render: function () {
    var renderedContent = this.template({
      images: this.images
    });
    this.$el.html(renderedContent);
    this.listenForScroll();
    this.renderImages();
    return this;
  },

  renderImages: function () {
    var that = this;
    this.images.each(function (image) {
      that.addImageSubviews(image);
    });
  },

  addImageSubviews: function (image) {
    var imageSubview = new EfStops.Views.SingleImageView({ image: image });
    this.addSubview(".whats-new", imageSubview);
  },

  listenForScroll: function () {
    $(window).off("scroll"); // remove past view's listeners
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
          wait: true,
        });
      }
    }
  },
});
