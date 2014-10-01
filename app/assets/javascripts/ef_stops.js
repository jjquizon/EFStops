window.EfStops = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $(".main-container");

    var collection = new EfStops.Collections.Feeds([], {
        currentUserId: currentUserId,
    });

    collection.fetch({
      data: { page: 1 },
      success: function() {
        new EfStops.Routers.AppRouter({
          windowHeight: EfStops.getWindowHeight(),
          collection: collection,
          $rootEl: $rootEl
        });
        Backbone.history.start();
      }
    });

  }
};
