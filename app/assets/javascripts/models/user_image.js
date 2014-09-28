EfStops.Models.UserImage =  Backbone.Model.extend({
  urlRoot: "/images",

  comments: function () {
    if (!this._comments) {
      this._comments = new EfStops.Collections.Comments([], { image: this });
    }
    return this._comments;
  },


  favorites: function () {
    if (!this._favorites) {
      this._favorites = new EfStops.Collections.Favorites([], { user: this });
    }
    return this._favorites;
  },

  parse: function(response) {
    if (response.comments) {
      this.comments().set(response.comments, { parse: true});
      delete response.comments;
    }

    if (response.favorites) {
      this.favorites().set(response.favorites, { parse: true });
      delete response.favorites;
    }

    this.assignCounts(response);
    return response;
  },

  assignCounts: function (response) {
    this.favoriteCount = response.count_of_favorites ? response.count_of_favorites : 0;
    delete response.count_of_favorites;

    this.commentCount = response.count_of_comments ? response.count_of_comments : 0;
    delete response.count_of_comments;

    return response;
  }

});
