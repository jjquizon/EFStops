EfStops.Models.Album = Backbone.Model.extend({
  urlRoot: "/albums",

  images: function () {
    if (!this._images) {
      this._images = new EfStops.Collections.UserImages([], { album: this });
    }
    return this._images;
  },

  comments: function () {
    if (!this._comments) {
      this._comments = new EfStops.Collections.Comments([], { album: this });
    }
    return this._comments;
  },

  favorites: function () {
    if (!this._favorites) {
      this._favorites = new EfStops.Collections.Favorites([], { user: this });
    }
    return this._favorites;
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

    this.assignCounts(response);
    return response;
  },

  assignCounts: function (response) {
    this.imageCount = response.count_of_images ? response.count_of_images : 0;
    delete response.count_of_images;

    this.favoriteCount = response.count_of_favorites ? response.count_of_favorites : 0;
    delete response.count_of_favorites;

    this.commentCount = response.count_of_comments ? response.count_of_comments : 0;
    delete response.count_of_comments;

    return response;
  }


});
