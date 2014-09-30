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
    var formAlbum_id = $form.find('.album-id-input').val();
    var fileUrl = '';


    // TODO: uncomment
    // filepicker.pick( function (Blob) {
    //   fileUrl = Blob.url;
    //   this.saveToDatabase(formTitle, formTag, fileUrl, formDescription, formAlbum_id);
    // }.bind(this));

    this.saveToDatabase(formTitle, formTag, "assets/di76dxki9.jpeg", formDescription, formAlbum_id);
    alert("Unfortunately due to filepicker API, you will not be able to choose an img, but here's a stickman!");


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
    debugger
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
