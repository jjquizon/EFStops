EfStops.Views.SingleAlbum = Backbone.CompositeView.extend({
  template: JST["users/subviews/single_album"],
  initialize: function (options){
    this.user = options.user;
    this.album = options.album;
    this.$el.addClass("photostream-thumb");
  },

  render: function () {
    var renderedContent = this.template({
      user: this.user,
      album: this.album
    });
    this.$el.html(renderedContent);
    return this;
  }


});
