EfStops.Views.UserProfile = Backbone.View.extend({
  template: JST["users/user_show"],

  initialize: function() {
    this.collection = this.model.userImages();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.collection, "sync add", this.render);
  },

  checkRender: function () {
    console.log("listening to images");
    this.render();
  },

  render: function () {
    var renderedContent = this.template({ user: this.model });
    this.$el.html(renderedContent);
    return this;
  }
});
