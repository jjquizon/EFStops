EfStops.Views.ShowAlbum = Backbone.View.extend({
  template: JST["album/album_show"],

  initialize: function () {
    this.collection = this.model.images();
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function () {
    console.log(this.model);
    var renderedContent = this.template({
      album: this.model,
      images: this.collection
    });

    this.$el.html(renderedContent);
    return this;
  }
});
