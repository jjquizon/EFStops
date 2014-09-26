EfStops.Models.Album = Backbone.Model.extend({
  urlRoot: "/albums",

  images: function () {
    if (!this._images) {
      this._images = new EfStops.Collections.UserImages([], { album: this });
    }
    return this._images;
  },

  parse: function(response) {
    if (response.images) {
      this.images().set(response.images, { parse: true });
      delete response.images;
    }

    return response;
  }


});
