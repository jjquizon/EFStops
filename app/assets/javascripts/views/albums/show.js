EfStops.Views.ShowAlbum = Backbone.View.extend({
  template: JST["album/album_show"],

  initialize: function () {
    this.collection = this.model.images();
    this.comments = this.model.comments();
    this.favorites = this.model.favorites();
    this.listenTo(this.model, 'add sync remove', this.render);
    this.listenTo(this.collection, 'sync', this.render);
    this.listenTo(this.favorites, 'add sync remove', this.render);
    this.listenTo(this.comments, 'sync', this.render);
  },

  events: {
    "click .new-comment-submit": "albumCommentSubmit",
    "click .favorite-this-album": "changeFavToggle"
  },

  render: function () {
    var renderedContent = this.template({
      album: this.model,
      images: this.collection,
      comments: this.comments,
      favToggle: this.favToggleText(),
      favText: this.favText
    });

    this.$el.html(renderedContent);
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
