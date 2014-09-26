EfStops.Models.UserImage =  Backbone.Model.extend({
  urlRoot: "/images",

  comments: function () {
    if (!this._comments) {
      this._comments = new EfStops.Collections.Comments([], { image: this });
    }
    return this._comments;
  },

  parse: function(response) {
    if (response.comments) {
      this.comments().set(response.comments, { parse: true});
      delete response.comments;
    }

    return response;
  }

});
