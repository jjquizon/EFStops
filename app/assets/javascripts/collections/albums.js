EfStops.Collections.Albums = Backbone.Collection.extend({
  model: EfStops.Models.Album,
  url: "/albums",

  getOrFetch: function (id) {
    var album = this.get(id);
    var albumCollection = this;
    if (!album) {
      album = new EfStops.Models.Album({ id: id });
      album.fetch({
        success: function () {
          EfStops.albums.add(album);
          albumCollection.add(album);
        }
      });
    } else {
      album.fetch();
    }

    return album;
  },

});

EfStops.albums = new EfStops.Collections.Albums();
