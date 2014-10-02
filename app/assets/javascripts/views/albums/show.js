EfStops.Views.ShowAlbum = Backbone.CompositeView.extend({
  template: JST["album/album_show"],

  initialize: function (options, activeLink) {
    this.album = options.album;
    this.user = options.user;
    this.images = this.album.images();
    this.listenTo(this.user, 'add sync', this.render);
    this.listenTo(this.album, 'add sync remove', this.render);
    this.listenTo(this.images, 'sync', this.render);
    this.$el.addClass("clearfix");
  },

  events: {
    "click .new-comment-submit": "albumCommentSubmit",
    "click .favorite-this-album": "changeFavToggle"
  },

  renderImages: function () {
    var that = this;
    this.images.each(function (image) {
      that.addImageSubviews(image);
    });
  },

  addImageSubviews: function (image) {
    var imageSubview = new EfStops.Views.SingleImageView({
      image: image,
      user: this.user
    });
    this.addSubview(".photostream", imageSubview);
  },

  render: function () {
    var renderedContent = this.template({
      user: this.user,
      album: this.album,
      images: this.images,
    });
    this.$el.html(renderedContent);
    this.renderImages();
    return this;
  },

  favToggleText: function () {
    var toggleFavOrUnfav = this.checkUser();
    this.favText = toggleFavOrUnfav ? "favorited": "not favorited";
    return toggleFavOrUnfav ? "Click to unfavorite" : "Click to favorite";
  },

  checkUser: function () {
    var check = this.model.favorites().find(function (user) {
      return currentUserId.toString() === user.escape('user_id');
    });

    return check;
  },

  changeFavToggle: function () {
    event.preventDefault();
    var view = this;
    var album = this.model;

    function favCreate() {
      var newFavorite = new EfStops.Models.Favorite({
        user_id: currentUserId,
        favoritable_id: album.id,
        favoritable_type: "Album"
      });

      newFavorite.save({}, {
        success: function () {
          Backbone.history.navigate("#/albums/" + view.model.id, { trigger: true });
        },
        error: function() {
          console.log("Failed to follow");
        }
      });
    }

    function favDestroy() {
      EfStops.favorites.fetch({
        success: function(favorites) {
          var deleteFav = favorites.where({
            user_id: currentUserId,
            favoritable_type: "Album"
          });

          deleteFav[0].destroy({
            success: function (){
              Backbone.history.navigate("#/albums/" + view.model.id, { trigger: true });
              },
            error: function () { console.log('error');}
          });
        }
      });
    }

    this.checkUser() ? favDestroy() : favCreate();

  },

  albumCommentSubmit: function(event) {
    event.preventDefault();
    $form = $('.new-comment-form');
    var formContent = $form.find('.new-comment-content').val();
    $form.find('.new-comment-content').val('');
    var newComment = new EfStops.Models.Comment({
      content: formContent,
      commentable_id: this.model.id,
      commentable_type: "Album",
      user_id: currentUserId
    });

    var view = this;
    newComment.save({}, {
      success: success,
      error: function() {
        console.log('failed to save');
      }
    });

    function success () {
      view.model.comments().add(newComment);
      Backbone.history.navigate("#/albums/" + view.model.id, { trigger: true });
    }
  }
});
