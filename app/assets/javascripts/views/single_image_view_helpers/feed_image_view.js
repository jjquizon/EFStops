EfStops.Views.FeedSingleImage = Backbone.View.extend({
  template: JST["users/subviews/single_feed_image"],

  initialize: function (options) {
    this.image = options.image;
    this.$el.addClass("feed-image-container").addClass("clearfix");
  },

  render: function () {
    var renderedContent = this.template({ image: this.image });
    this.$el.html(renderedContent);
    return this;
  }
});
