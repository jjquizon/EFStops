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

  comparator: function (image) {
    return  -image.get('id');
  },

  fetchByTag: function (tag) {
    this.tag = this.capitalize(tag);
    var that = this;
    this.newImages = new EfStops.Collections.UserImages();
    this.fetch({
      success: function (collection, response, options) {
        var images = new EfStops.Collections.UserImages();
        images.set(response.images);
        delete response.images;
        var newImages = images.where({ image_tag: this.tag });
        this.newImages.set(newImages);
      }.bind(this)
    });
    return this.newImages;
  },

  setNewCollection: function(response) {

  },


  capitalize: function(string) {
    return string.charAt(0).toUpperCase() + string.substring(1).toLowerCase();
  }

});

EfStops.userImages = new EfStops.Collections.UserImages();
