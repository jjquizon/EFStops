EfStops.Views.SearchByTag = Backbone.View.extend({
  template: JST["search/search_images"],

  initialize: function(options) {
    this.tag = options.tag;
    this.listenTo(this.collection, "sync", this.filterImages);
  },

  filterImages: function () {
    this.collection = this.collection.where({ image_tag: this.tag });

    //collection.set

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
