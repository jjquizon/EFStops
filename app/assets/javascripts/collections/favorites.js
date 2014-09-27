EfStops.Collections.Favorites = Backbone.Collection.extend({
  model: EfStops.Models.Favorite,
  url: "/favorites"
});

EfStops.favorites = new EfStops.Collections.Favorites();
