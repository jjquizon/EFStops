EfStops.Views.UserImageShow = Backbone.View.extend({
  template: JST["images/user_images_show"],

  initialize: function() {
    this.comments = this.model.comments();
    this.favorites = this.model.favorites();
    this.listenTo(this.model, "add sync remove", this.render);
    this.listenTo(this.comments, 'add sync remove', this.render);
    this.listenTo(this.favorites, 'add sync remove', this.render);
  },

  events: {
    "click .new-comment-submit": "imageCommentSubmit",
    "click .favorite-this-image": "changeFavToggle"
  },

  render: function() {
    var renderedContent = this.template({
      image: this.model,
      comments: this.comments,
      commentCount: this.model.commentCount,
      favoriteCount: this.model.favoriteCount,
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
    var image = this.model;

    function favCreate() {
      var newFavorite = new EfStops.Models.Favorite({
        user_id: currentUserId,
        favoritable_id: image.id,
        favoritable_type: "Image"
      });

      newFavorite.save({}, {
        success: function () {
          Backbone.history.navigate("#/images/" + view.model.id, { trigger: true });
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
            favoritable_type: "Image"
          });

          console.log(deleteFav);
          deleteFav[0].destroy({
            success: function (){
              Backbone.history.navigate("#/images/" + view.model.id, { trigger: true });
              },
            error: function () { console.log('error');}
          });
        }
      });
    }

    this.checkUser() ? favDestroy() : favCreate();

  },

  imageCommentSubmit: function(event) {
    event.preventDefault();
    $form = $('.new-comment-form');
    var formContent = $form.find('.new-comment-content').val();
    $form.find('.new-comment-content').val('');
    var newComment = new EfStops.Models.Comment({
      content: formContent,
      commentable_id: this.model.id,
      commentable_type: "Image",
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
      Backbone.history.navigate("#/images/" + view.model.id, { trigger: true });
    }
  }

});
