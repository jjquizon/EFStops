EfStops.Views.Upload = Backbone.View.extend({
  template: JST['images/images_upload'],

  initialize: function (options) {
    this.currentUser = options.user;
    this.listenTo(this.currentUser, 'sync', this.render);
    // this.listenTo(this.currentUser.albums(), 'sync add', this.render);

  },

  events: {
    'click .filepicker-button': 'getFormValues'
  },

  getFormValues: function(event) {
    event.preventDefault();
    var $form = $(".upload-form");
    var formTitle = $form.find('.upload-title').val();
    var formTag = $form.find('.upload-tag').val();
    var formDescription = $form.find('textarea').val();
    var formAlbum_id = $form.find('.album-id-input').val();
    var fileUrl = '';

    filepicker.pick( function (Blob) {
      fileUrl = Blob.url;
      this.saveToDatabase(formTitle, formTag, fileUrl, formDescription, formAlbum_id);
    }.bind(this));

  },

  render: function(){
    this.$el.html(this.template({ user: this.currentUser }));
    return this;
  },

  saveToDatabase: function (title, tag, url, description, album_id) {
    var that = this;
    function success () {
      EfStops.userImages.add(image);
      that.currentUser.images().add(image);
      Backbone.history.navigate("images/" + image.id, { trigger: true });
    }

    var image = new EfStops.Models.UserImage({
      title: title,
      image_tag: tag,
      image_url: url,
      description: description,
      album_id: album_id
    });

    image.save({}, {
      success: success,
      error: function () {
        console.log("failed to save");
      }
    });
  }
});
