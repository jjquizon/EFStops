EfStops.Models.User = Backbone.Model.extend({
  urlRoot: "/users",

  userImages: function () {
    if (!this._userImages) {
      this._userImages = new EfStops.Collections.UserImages([], { user: this });
    }
    return this._userImages;
  },

  parse: function(response) {
    if (response.userImages) {
      this.userImages().set(response.userImages, { parse: true });
      delete response.userImages;
    }

    return response;
  }

});
