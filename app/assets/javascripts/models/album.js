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

  parse: function(response) {
    if (response.images) {
      this.images().set(response.images, { parse: true });
      delete response.images;
    }

    if (response.comments) {
      this.comments().set(response.comments, { parse: true });
      delete response.comments;
    }

    return response;
  }


});
