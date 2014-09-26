EfStops.Models.User = Backbone.Model.extend({
  urlRoot: "users",

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

  parse: function(response) {
    if (response.albums) {
      this.albums().set(response.albums, { parse: true });
      delete response.albums;
    }

    if (response.images) {
      this.images().set(response.images, { parse: true });
      delete response.images;
    }

    return response;
  }


});
