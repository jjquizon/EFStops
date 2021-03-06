EfStops.Models.User = Backbone.Model.extend({
  urlRoot: "/users",

  albums: function () {
    if (!this._albums) {
      this._albums = new EfStops.Collections.Albums([], { user: this });
    }
    return this._albums;
  },

  images: function () {
    if (!this._images) {
      this._images = new EfStops.Collections.UserImages([], { user: this });
    }
    return this._images;
  },

  follows: function () {
    if (!this._follows) {
      this._follows = new EfStops.Collections.Follows([], { user: this });
    }
    return this._follows;
  },

  followers: function () {
    if (!this._followers) {
      this._followers = new EfStops.Collections.Followers([], { user: this });
    }
    return this._followers;
  },

  favoriteImages: function () {
    if (!this._favoriteImages) {
      this._favoriteImages = new EfStops.Collections.Favorites([], { user: this });
    }
    return this._favoriteImages;
  },

  parse: function(response) {
    if (response.albums) {
      this.albums().set(response.albums, { parse: true });
      delete response.albums;
    }

    if (response.images) {
      this.images().set(response.images, { parse: true });
      delete response.images;
    }

    if (response.favorite_images) {
      this.favoriteImages().set(response.favorite_images, { parse: true });
      delete response.favorite_images;
    }

    this.parseFollows(response);
    this.assignCounts(response);
    return response;
  },

  parseFollows: function (response) {
    if (response.follows) {
      this.follows().set(response.followed_users, { parse: true });
      delete response.follows;
    }

    if (response.followers) {
      this.followers().set(response.followers, { parse: true });
      delete response.followers;
    }

    return response;
  },

  assignCounts: function (response) {
    this.albumCount = response.count_of_albums ? response.count_of_albums : 0;
    delete response.count_of_albums;

    this.imageCount = response.count_of_images ? response.count_of_images : 0;
    delete response.count_of_images;

    this.followerCount = response.count_of_followers ? response.count_of_followers : 0;
    delete response.count_of_followers;

    this.followsCount = response.count_of_followed ? response.count_of_followed : 0;
    delete response.count_of_followed;


    return response;
  },

});
