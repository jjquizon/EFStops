EfStops.Views.UserProfile = Backbone.CompositeView.extend({
  template: JST["users/user_show"],

  initialize: function() {
    this.images = this.model.images();
    this.albums = this.model.albums();
    this.listenTo(this.model, "sync add", this.render);
    this.listenTo(this.images, "sync add", this.render);
    this.listenTo(this.albums, "sync add", this.render);
    this.$el.addClass("clearfix");
  },

  events: {
    "click .change-avatar": "changeUserAvatar",
    "resize window": "render"
  },

  render: function () {
    var renderedContent = this.template({
      user: this.model,
      albums: this.albums,
      images: this.images,
      width: $(window).width()
      });
    this.$el.html(renderedContent);
    return this;
  },

  changeUserAvatar: function (event) {
    event.preventDefault();
    function saveToDatabase (fileUrl) {
      var user = new EfStops.Models.User();
      user.set({
        id: currentUserId,
        user: { avatar_url: fileUrl}
      });

      user.save({}, {
        success: function (){
          console.log("saved image");
          Backbone.history.navigate("#/you" , { trigger: true });
        },
        error: function () {
          console.log("failed to save image");
        }
      });
    }

    // disable change avatar, sets avatar to stick man
    saveToDatabase("assets/di76dxki9.jpeg");
    alert("Unfortunately due to filepicker API, you will not be able to choose an img, but here's a stickman!");
    // filepicker.pick( function (Blob) {
    //   fileUrl = Blob.url;
    //   saveToDatabase(fileUrl);
    // }.bind(this));

  }
});
