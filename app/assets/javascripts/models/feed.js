EfStops.Models.Feed = Backbone.Model.extend({
  initialize: function () {
  },

  urlRoot: function (id) {
    var url = "users/" + currentUserId + "/feed";
    return url;
  },

  feedImages: function () {
    if (!this._feedImages){
      this._feedImages = new EfStops.Collections.Feeds([], {feed: this });
    }

    return this._feedImages;
  },

  parse: function (response) {
    if (response.followers_images) {
      var images = response.followers_images;
      delete response.followers_images;
      this.feedImages().set(_.flatten(images), { parse: true});

    }

    return response;
  }

});
