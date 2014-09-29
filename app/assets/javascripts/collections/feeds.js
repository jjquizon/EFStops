EfStops.Collections.Feeds = Backbone.Collection.extend({
  model: EfStops.Models.Feed,
  url: "/users",

  getOrFetch: function (id) {
    this.id = id;
    var feed = EfStops.feeds.get(id);

    if (!feed) {
      feed = new EfStops.Models.Feed();
      feed.fetch({
        success: function() {
          EfStops.feeds.add(feed);
        }
      });
    } else {
      feed.fetch();
    }

    return feed;
  },
});

EfStops.feeds = new EfStops.Collections.Feeds();
