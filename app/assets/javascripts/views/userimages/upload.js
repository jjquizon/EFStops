EfStops.Views.Upload = Backbone.View.extend({
  template: JST['images/upload'],

  initialize: function (options) {
    this.currentUser = options.user;
  },

  events: {
    'click .filepicker-button': 'upload'
  },

  upload: function(event) {
    event.preventDefault();
    var filepicker_url = '';
    var $form = $(".upload-form");
    var formTitle = $form.find('.upload-title').val();
    var formTag = $form.find('.upload-tag').val();
    var fileUrl = '';

    filepicker_url = filepicker.pick( function (Blob) {
      fileUrl = Blob.url;
      this.saveToDatabase(formTitle, formTag, fileUrl);
    }.bind(this));

  },

  render: function(){
    this.$el.html(this.template());
    return this;
  },

  saveToDatabase: function (title, tag, url) {
    var that = this;
    function success () {
      that.currentUser.userImages().add(image);
      Backbone.history.navigate("/", { trigger: true });
    }

    var image = new EfStops.Models.UserImage({
      title: title,
      image_tag: tag,
      image_url: url,
      user_id: this.currentUser.id
    });

    image.save({}, {
      success: success,
      error: function () {
        console.log("failed to save");
      }
      });
  }
});
