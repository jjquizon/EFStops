EfStops.Views.ShowAlbum = Backbone.View.extend({
  template: JST["album/album_show"],

  initialize: function () {
    this.collection = this.model.images();
    this.comments = this.model.comments();
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.collection, 'sync', this.render);
    // this.listenTo(this.comments, 'sync', this.render);
  },

  render: function () {
    var renderedContent = this.template({
      album: this.model,
      images: this.collection,
      comments: this.comments
    });

    this.$el.html(renderedContent);
    return this;
  }
});
