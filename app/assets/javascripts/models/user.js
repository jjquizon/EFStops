EfStops.Models.User = Backbone.Model.extend({
  urlRoot: "/users",

  userImages: function () {
    if(!this._userImages) {
      this._userImages = new EfStops.Collections.UserImages([], { user: this });
    }
    return this._userImages || [];
  },


});
