EfStops.Models.Album = Backbone.Model.extend({
  urlRoot: "/albums",

  images: function () {
    if (!this._images) {
      this._images = new EfStops.Collections.UserImages([], { user: this });
    }
    return this._images;
  },

  

});
