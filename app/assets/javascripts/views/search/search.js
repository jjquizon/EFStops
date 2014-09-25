EfStops.Views.SearchImages = Backbone.View.extend({
  template: JST["search/search_images"],

  initialize: function() {
    this.listenTo(this.collection, "sync", this.render);
  },

  render: function () {
    var renderedContent = this.template({ images: this.collection });
    this.$el.html(renderedContent);
    return this;
  }
});
