EfStops.Views.SingleAlbum = Backbone.CompositeView.extend({
  template: JST["users/subviews/single_album"],
  initialize: function (options){
    this.album = options.album;
    this.$el.addClass("photostream-thumb");  },

  render: function () {
    var renderedContent = this.template({ album: this.album });
    this.$el.html(renderedContent);
    return this;
  }


});
