EfStops.Views.UserProfile = Backbone.CompositeView.extend({
  template: JST["users/user_show"],

  initialize: function() {
    console.log(this.model);
    this.images = this.model.images();
    this.albums = this.model.albums();
    this.favoriteImages = this.model.favoriteImages();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.images, "add", this.addImageSubviews);
    this.listenTo(this.albums, "sync", this.render);
    this.$el.addClass("clearfix");
  },

  events: {
    "click .change-avatar": "changeUserAvatar",
    "resize window": "render",
    "click #nav-ul-links": "changeActive"
  },

  render: function () {
    var renderedContent = this.template({
      user: this.model,
      albums: this.albums,
      images: this.images,
      width: $(window).width()
      });
    this.$el.html(renderedContent);
    this.findActive();
    // this.renderImages();
    return this;
  },

  addImageSubviews: function (image) {
    var imageSubview = new EfStops.Views.SingleImageView({ image: image });
    this.addSubview(".photostream", imageSubview);
  },

  addAlbumSubviews: function (album) {
    var albumSubview = new EfStops.Views.SingleAlbum({ album: album });
    this.addSubview(".photostream", albumSubview);
  },

  findActive: function () {
    var target = this.$el.find('.active').text();
    this.linkgrabber(target);
  },

  renderImages: function () {
    var that = this;
    this.images.each(function (image) {
      that.addImageSubviews(image);
    });
  },

  changeActive: function (event) {
    event.preventDefault();
    this.clearSubviews();
    this.removeActive();
    $(event.target.parentElement).addClass('active');
    var target = event.target.text;
    this.linkgrabber(target);
  },

  linkgrabber: function (target) {
    switch(target) {
      case "Photostream":
        this.renderImages();
        break;
      case "Albums":
        this.renderAlbums();
        break;
      case "Favorites":
        this.renderFavorites();
        break;
      case "Edit":
        this.renderEdit();
        break;
    }
  },

  renderAlbums: function () {
    var that = this;
    this.albums.each(function (album){
      that.addAlbumSubviews(album);
    });
  },

  renderFavorites: function () {
    var that = this;
    this.favoriteImages.each(function (image){
      that.addImageSubviews(image);
    });
  },

  renderEdit: function () {
    console.log("render edit!");
  },

  removeActive: function () {
    this.$el.find('li').each(function (idx, li) {
      console.log(li);
      $(li).removeClass('active') ;
    });
  },

  clearSubviews: function () {
    this.remove(true);
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
