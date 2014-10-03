EfStops.Views.SingleImageView = Backbone.CompositeView.extend({
  template: JST["images/subviews/single_image"],

  initialize: function(options) {
    this.image = options.image;
    this.listenTo(this.image, 'sync', this.render);
    this.$el.addClass("photostream-thumb");
  },

  events: {
    "click .glyphicon": "favoriteOrUnfav"
  },

  render: function () {
    var renderedContent = this.template({
      image: this.image
    });
    this.$el.html(renderedContent);

    return this;
  },

  favoriteOrUnfav: function (event) {
    event.preventDefault();
  },

  favToggleText: function () {
     var toggleFavOrUnfav = this.checkUser();
     this.favText = toggleFavOrUnfav ? "favorited": "not favorited";
     return toggleFavOrUnfav ? "Click to unfavorite" : "Click to favorite";
  },

  checkUser: function () {
    var check = this.model.favorites().find(function (user) {
      return currentUserId.toString() === user.escape('user_id');
    });

    return check;
  },

});
