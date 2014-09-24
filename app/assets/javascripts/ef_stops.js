window.EfStops = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $(".main-container");

    new EfStops.Routers.AppRouter({
      $rootEl: $rootEl
    });

    Backbone.history.start();
  }
};
