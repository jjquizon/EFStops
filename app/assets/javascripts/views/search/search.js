EfStops.Views.SearchByTag = Backbone.View.extend({
  template: JST["search/search_images"],

  initialize: function(options) {
    this.tag = options.tag;
    this.listenTo(this.collection, "sync", this.filterImages);
    this.$el.addClass("clearfix");
  },

  filterImages: function () {
    this.collection = this.collection.where({ image_tag: this.tag });
    this.dontrender();
  },

  dontrender: function () {
    var renderedContent = this.template({
        tag: this.tag,
        images: this.collection
      });

    this.$el.html(renderedContent);
    return this;
  }
});
