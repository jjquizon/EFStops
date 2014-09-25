EfStops.Views.SearchByTag = Backbone.View.extend({
  template: JST["search/search_images"],

  initialize: function(options) {
    this.tag = options.tag;
    // this.listenTo(this.collection, "sync", this.render);
  },

  render: function () {
    var renderedContent = this.template({
        tag: this.tag,
        // images: this.collection
      });

    this.$el.html(renderedContent);
    return this;
  }
});
