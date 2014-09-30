EfStops.Collections.WhatsNews = Backbone.Collection.extend({
  model: EfStops.Models.WhatsNew,

  initialize: function (models, options) {
    this.pageNumber = 1;
  },

  url: function() {
    var url = "/images/page";
    return url;
  },

  images: function () {
    if (!this._images) {
      this._images = new EfStops.Collections.WhatsNews();
    }

    return this._images;
  },

  parse: function (response) {
    if (response.images) {
      var responseImages = response.images;
      this.images().set(responseImages, { remove: false });
      delete response.images;
    }

    if (response.page_number) {
      this.pageNumber = parseInt(response.page_number);
      delete response.page_number;
    }

    if (response.total_pages) {
      this.totalPages = parseInt(response.total_pages);
      delete response.total_pages;
    }

  }
});


EfStops.WhatsNew = new EfStops.Collections.WhatsNews();
