EfStops.Collections.Albums = Backbone.Collection.extend({
  url: "albums/",

  getOrFetch: function (id) {
    var album = this.get(id);
    var albumCollection = this;
    if (!album) {
      album = new EfStops.Models.Album({ id: id });
      album.fetch({
        success: function () {
          EfStops.albums.add(album);
          albumCollection.add(album);
          album.images().fetch();
        }
      });
    } else {
      album.fetch();
      album.images().fetch();
    }

    return album;
  },

});

EfStops.albums = new EfStops.Collections.Albums();
