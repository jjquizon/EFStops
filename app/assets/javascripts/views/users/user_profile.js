EfStops.Views.UserProfile = Backbone.View.extend({
  template: JST["users/user_show"],

  initialize: function() {
    this.images = this.model.images();
    this.albums = this.model.albums();
    // this.albums.fetch();
    this.listenTo(this.model, "sync add", this.render);
    this.listenTo(this.images, "sync add", this.render);
    this.listenTo(this.albums, "sync add", this.render);
  },

  render: function () {

    var renderedContent = this.template({
      user: this.model,
      albums: this.albums,
      images: this.images
      });
    this.$el.html(renderedContent);
    return this;
  }
});
