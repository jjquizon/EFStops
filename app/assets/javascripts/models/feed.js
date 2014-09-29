EfStops.Models.Feed = Backbone.Model.extend({
  initialize: function (options) {
    this.pageNumber = 1;
  },

  urlRoot: function () {
    // var url = "users/" + id + "/feed/";
    var url = "";
    return url;
  },

});
