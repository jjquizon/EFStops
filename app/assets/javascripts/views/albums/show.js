EfStops.Views.ShowAlbum = Backbone.View.extend({
  template: JST["album/album_show"],

  initialize: function () {
    this.collection = this.model.images();
    this.comments = this.model.comments();
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.collection, 'sync', this.render);
    // this.listenTo(this.comments, 'sync', this.render);
  },

  events: {
    "click .new-comment-submit": "albumCommentSubmit"
  },

  render: function () {
    var renderedContent = this.template({
      album: this.model,
      images: this.collection,
      comments: this.comments
    });

    this.$el.html(renderedContent);
    return this;
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
