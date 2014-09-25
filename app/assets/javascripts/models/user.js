EfStops.Models.User = Backbone.Model.extend({
  urlRoot: "/users",


  albums: function () {
    if (!this._albums) {
      this._albums = new EfStops.Collections.Albums([], { user: this });
    }
    return this._albums;
  },

  parse: function(response) {
    if (response.userImages) {
      this.userImages().set(response.userImages, { parse: true });
      delete response.userImages;
    }

    return response;
  }

});
