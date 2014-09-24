window.EfStops = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new EfStops.Router.Approuter();
    Backbone.history.start();
  }
};

$(document).ready(function(){
  EfStops.initialize();
});
