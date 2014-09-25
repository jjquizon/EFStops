EfStops.Collections.Albums = Backbone.Collection.extend({
  url: "albums/",

  getOrFetch: function (id) {
    var album = this.get(id);
    var albumCollection = this;
    if (!album) {
      album = new EfStops.Models.Album({ id: id });
      album.fetch({
        success: function () {
          albumCollection.add(album);
        }
      });
    } else {
      album.fetch();
    }

    return album;
  },

});
