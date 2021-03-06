EfStops.Views.UserImageShow = Backbone.View.extend({
  template: JST["images/user_images_show"],

  initialize: function() {
    this.image = this.model;
    this.comments = this.image.comments();
    this.favorites = this.image.favorites();
    this.imageT = this.image.image_tag;
    this.listenTo(this.model, "add sync remove", this.render);
    this.listenTo(this.comments, 'add sync remove', this.render);
    this.listenTo(this.favorites, 'add sync remove', this.render);
    this.$el.addClass("clearfix");
  },

  events: {
    "click .new-comment-submit": "imageCommentSubmit",
    "click .favorite-this-image": "changeFavToggle"
  },

  render: function() {

    var renderedContent = this.template({
      tag: this.getImageTag(),
      image: this.model,
      comments: this.comments,
      favToggle: this.favToggleText(),
      favText: this.favText
    });

    this.$el.html(renderedContent);
    return this;
  },

  getImageTag: function () {
    var tag = EfStops.SearchTags[this.imageTag] || { image_url: "assets/Camera-icon.png" };
    return tag;
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

    this.newComment = new EfStops.Models.Comment({
      content: formContent,
      commentable_id: this.model.id,
      commentable_type: "Image",
      user_id: currentUserId
    });

    var that = this;
    this.newComment.save({}, {
      success: function() {
        that.success();
      },
      error: function() {
        console.log('failed to save');
      }
    });

  },

  success: function () {
    this.model.comments().add(this.newComment);
    Backbone.history.navigate("#/images/" + this.model.id, { trigger: true });
  }

});
