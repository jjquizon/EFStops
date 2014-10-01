EfStops.Views.SingleImageView = Backbone.CompositeView.extend({
  template: JST["images/subviews/single_image"],

  initialize: function(options) {
    this.image = options.image;
    this.listenTo(this.image, 'sync', this.render);
    this.$el.addClass("photostream-thumb");
    this.addHoverListener();
  },

  render: function () {
    var renderedContent = this.template({
      image: this.image
    });
    this.$el.html(renderedContent);

    return this;
  },



});
