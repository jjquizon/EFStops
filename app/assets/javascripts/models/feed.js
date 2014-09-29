EfStops.Models.Feed = Backbone.Model.extend({
  initialize: function (options) {
    this.pageNumber = 1;
  },

  urlRoot: function () {
    // var url = "users/" + id + "/feed/";
    var url = "";
    return url;
  },

  // feedImages: function () {
  //   return this._feedImages;
  // },
  //
  // parse: function (response) {
  //   console.log("parsing response");
  //   console.log(response);
  //   if (response.followers_images) {
  //     var images = response.followers_images;
  //     delete response.followers_images;
  //     this.EfStops.userFeed.set(images, { parse: true});
  //   }
  //
  //   if (response.page_number){
  //     console.log('included page_number');
  //     this.page_number = parseInt(response.page_number);
  //     console.log(this.page_number);
  //     delete response.page_number;
  //   }
  //
  //   if (response.total_pages) {
  //     console.log('included totalpages_number');
  //     this.total_pages = parseInt(response.total_pages);
  //     delete response.total_pages;
  //   }
  //
  //
  //   return response;
  // }

});
