EfStops.Views.SearchByTag = Backbone.CompositeView.extend({
  template: JST["search/search_images"],

  initialize: function(options) {
    this.tag = this.capitalize(options.tag);
    this.collection = options.collection;
    this.$el.addClass("clearfix");
    this.listenTo(this.collection, 'add sync', this.addImageSubviews);
  },

  renderImages: function () {
    var that = this;
    this.collection.each(function (image) {
      that.addImageSubviews(image);
    });
  },

  addImageSubviews: function (image) {
    var imageSubview = new EfStops.Views.SingleImageView({ image: image });
    this.addSubview(".whats-new", imageSubview);
  },

  render: function () {
    var renderedContent = this.template({
        tag: this.tag,
        images: this.collection
      });

    this.$el.html(renderedContent);
    this.renderImages();
    return this;
  },

  capitalize: function(string) {
    return string.charAt(0).toUpperCase() + string.substring(1).toLowerCase();
  }


});
