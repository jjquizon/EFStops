EfStops.Views.UserImageShow = Backbone.View.extend({
  template: JST["images/user_images_show"],

  initialize: function() {
    this.comments = this.model.comments();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.comments, 'sync', this.render);
  },

  render: function() {
    var renderedContent = this.template({
      image: this.model,
      comments: this.comments
    });

    this.$el.html(renderedContent);
    return this;
  }
  //800 x 600 px


});
