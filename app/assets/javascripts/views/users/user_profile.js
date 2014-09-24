EfStops.Views.UserProfile = Backbone.View.extend({
  template: JST["users/user_show"],

  initialize: function() {
    this.listenTo(this.model, "sync", this.render);
    // this.listenTo(this.model.userImages, "sync add remove", this.render);
  },


  render: function () {
    var renderedContent = this.template({ user: this.model });
    this.$el.html(renderedContent);
    return this;
  }
});
