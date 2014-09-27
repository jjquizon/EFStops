EfStops.Models.Album = Backbone.Model.extend({
  urlRoot: "/albums",

  images: function () {
    if (!this._images) {
      this._images = new EfStops.Collections.UserImages([], { album: this });
    }
    return this._images;
  },

  numOfImages: function () {
    return this._images.length;
  },

  comments: function () {
    if (!this._comments) {
      this._comments = new EfStops.Collections.Comments([], { album: this });
    }
    return this._comments;
  },

  numOfComments: function () {
    return this.comments().length;
  },

  favorites: function () {
    if (!this._favorites) {
      this._favorites = new EfStops.Collections.Favorites([], { user: this });
    }
    return this._favorites;
  },

  numOfFavorites: function () {
    return this.favorites().length;
  },

  parse: function(response) {
    if (response.images) {
      this.images().set(response.images, { parse: true });
      delete response.images;
    }

    if (response.comments) {
      this.comments().set(response.comments, { parse: true });
      delete response.comments;
    }

    if (response.favorites) {
      this.favorites().set(response.favorites, { parse: true });
      delete response.favorites;
    }

    return response;
  }


});
