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

  parse: function(response) {
    if (response.albums) {
      this.albums().set(response.albums, { parse: true });
      delete response.albums;
    }

    if (response.images) {
      this.images().set(response.images, { parse: true });
      delete response.images;
    }

    if (response.follows) {
      this.follows().set(response.follows, { parse: true });
    }

    // debugger
    if (response.followers) {
      this.followers().set(response.followers, { parse: true });
    }

    return response;
  }


});
