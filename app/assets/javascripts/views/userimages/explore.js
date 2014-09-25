EfStops.Views.Explore = Backbone.View.extend({
  template: JST["images/images_explore"],

  initialize: function () {
    this.TAGS = ["Other", "Architecture", "Animals", "Art", "Automobiles",
      "Celebrity", "Design", "Fashion", "Film", "Food", "Funny",
      "Illustrations", "Interior Design", "Music", "Nature", "Photography",
      "Religion", "Romance", "Sports", "Toys", "Travel", "Typography",
      "Urban", "Weddings"];

    this.listenTo(this.collection, 'sync', this.render);
  },



  render: function () {
    var renderedContent = this.template({
      images: this.collection ,
      tags: this.TAGS
      });
    this.$el.html(renderedContent);
    return this;
  }
});
