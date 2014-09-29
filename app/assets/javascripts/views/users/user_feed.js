EfStops.Views.UserFeed = Backbone.View.extend({
  template: JST['users/user_feed'],

  initialize: function () {
    this.images = this.model.feedImages();
    this.listenTo(this.model, "sync", this.render);
    // this.listenTo(this.images, 'sync, add, destroy', this.render);
  },

  render: function() {
    var renderedContent = this.template({
      user: this.model,
      images: this.images
    });
    this.$el.html(renderedContent);
    return this;
  }
});
