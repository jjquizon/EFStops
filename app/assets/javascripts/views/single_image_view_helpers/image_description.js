EfStops.Views.ImageDescription = Backbone.View.extend({
  template: JST["images/subviews/single_image"],

  initialize: function (options) {
    this.image = this.model;
    this.listenTo(this.image, 'sync', this.render);
  },

  render: function () {
    var renderedContent = this.template({ image: this.image });
    this.$el.html(renderedContent);
    return this;
  }

});
