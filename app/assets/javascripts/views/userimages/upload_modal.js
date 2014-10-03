EfStops.ModalUpload = Backbone.Modal.extend({
  template: JST["images/images_upload"],

  initialize: function (options) {
    this.user = options.model;
    this.listenTo(this.user, "sync", this.render);
  },

  serializeData: function () {
    return { user: this.user };
  },

  events: {
    'click #filepicker-button': 'getFormValues',
    "click #cancel-upload": "closeModal"
  },

  closeModal: function (event) {
    event.preventDefault();
    this.close();
  },

  getFormValues: function(event) {
    event.preventDefault();
    var $form = $(".upload-form");
    var formTitle = $form.find('.upload-title').val();
    var formTag = $form.find('.upload-tag').val();
    var formDescription = $form.find('textarea').val();
    var formAlbumTitle = $form.find('.album-id-input').val();
    var formAlbum_id = this.user.albums().where({ title: formAlbumTitle })[0].id;
    var fileUrl = '';

    // TODO: uncomment
    // filepicker.pick( function (Blob) {
    //   fileUrl = Blob.url;
    //   this.saveToDatabase(formTitle, formTag, fileUrl, formDescription, formAlbum_id);
    // }.bind(this));

    this.saveToDatabase(formTitle, formTag, "http://www.quickmeme.com/img/bf/bf01e83d627e5314134fca8b2be9db5b21d1d06fbe5de2bbfc148098835f80ec.jpg", formDescription, formAlbum_id);
  },

  saveToDatabase: function (title, tag, url, description, album_id) {
    var that = this;
    this.image = new EfStops.Models.UserImage({
      title: title,
      image_tag: tag,
      image_url: url,
      description: description,
      album_id: album_id
    });

    this.image.save({}, {
      success: function(model) {
        that.success(model);
      },
      error: function () {
        console.log("failed to save");
      }
    });
  },

  success: function (image) {
    EfStops.userImages.add(this.image);
    this.user.images().add(this.image);
    this.close();
    Backbone.history.navigate("#/images/" + this.image.id, { trigger: true });
  }
});

$(document).ready(function($) {
  $('#img-upload').on('click', function(event){
    event.preventDefault();
    var user = EfStops.users.getOrFetch(currentUserId);
    var modalView = new EfStops.ModalUpload({ model: user });
    $("#modal-container").html(modalView.render().$el);
  });
});
