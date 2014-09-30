EfStops.Collections.Feeds = Backbone.Collection.extend({
  model: EfStops.Models.Feed,

  initialize: function (models, options) {
    this.currentUserId = options.currentUserId;
  },

  url: function() {
    var url = "/users/" + this.currentUserId + "/feed";
    return url;
  },

  getOrFetch: function (id) {
    this.id = id;
    var feed = EfStops.feeds.get(id);
    if (!feed) {
      feed = new EfStops.Models.Feed("model",{
          currentUserId: this.currentUserId
      });
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

  images: function () {
    if (!this._images) {
      this._images = new EfStops.Collections.Feeds([], {
        currentUserId: this.currentUserId
      });
    }

    return this._images;
  },

  parse: function (response) {
    if (response.followers_images) {
      var responseImages = response.followers_images;
      this.images().set(responseImages, { remove: false });
      delete response.followers_images;
    }

    if (response.page_number){
      this.pageNumber = parseInt(response.page_number);
      delete response.page_number;
    }

    if (response.total_pages) {
      this.totalPages = parseInt(response.total_pages);
      delete response.total_pages;
    }

    return response.models;
  }




});
