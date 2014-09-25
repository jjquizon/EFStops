EfStops.Collections.UserImages = Backbone.Collection.extend({
  model: EfStops.Models.UserImage,
  url: "images/",

  initialize: function (models, options) {
    // this.user = options.user;
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

  getByTag: function (tag) {
    var images = [];
    var that = this;
    this.fetch({
      success: function () {
        getImages(that);
      }
    });

    function getImages (collection) {
      collection.forEach(function (image) {
        if (image.tag === tag) {
          images.concat(image);
        }
      });
    }
  }



});

EfStops.userImages = new EfStops.Collections.UserImages();
