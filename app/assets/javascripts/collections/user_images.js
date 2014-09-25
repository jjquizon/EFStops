EfStops.Collections.UserImages = Backbone.Collection.extend({
  model: EfStops.Models.UserImage,
  url: "images/",

  initialize: function (models, options) {
    this.user = options.user;
  },

  getOrFetch: function (id) {
    var image = this.get(id);
    var images = this;
    if (!card) {
      image = new EfStops.Models.UserImages({ id: id });
      image.fetch({
        success: function () {
          images.add(image);
        }
      });
    } else {
      image.fetch();
    }

    return image;
  },



});
