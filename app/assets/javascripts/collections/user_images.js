EfStops.Collections.UserImages = Backbone.Collection.extend({
  model: EfStops.Models.UserImage,
  url: "/images",

  initialize: function (models, options) {
  },

  getOrFetch: function (id) {
    var image = this.get(id);
    var imageCollection = this;
    if (!image) {
      image = new EfStops.Models.UserImage({ id: id });
      image.fetch({
        success: function () {
          imageCollection.add(image);
        }
      });
    } else {
      image.fetch();
    }

    return image;
  },

});

EfStops.userImages = new EfStops.Collections.UserImages();
