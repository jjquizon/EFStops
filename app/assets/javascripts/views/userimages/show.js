EfStops.Views.UserImageShow = Backbone.View.extend({
  template: JST["images/user_images_show"],

  initialize: function() {
    this.comments = this.model.comments();
    this.listenTo(this.model, "add sync", this.render);
    this.listenTo(this.comments, 'add sync', this.render);
  },

  events: {
    "click .new-comment-submit": "imageCommentSubmit"
  },

  render: function() {
    var renderedContent = this.template({
      image: this.model,
      comments: this.comments
    });

    this.$el.html(renderedContent);
    return this;
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
