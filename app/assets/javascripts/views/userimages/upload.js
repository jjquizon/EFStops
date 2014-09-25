EfStops.Views.Upload = Backbone.View.extend({
  template: JST['images/upload'],

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

    function success () {
      Backbone.history.navigate("/", { trigger: true });
    }

    var image = new EfStops.Models.UserImage({
      title: title,
      image_tag: tag,
      image_url: url,
      user_id: currentUserId
    });

    // console.log(image);

    image.save({}, {
      success: success,
      error: function () {
        console.log("failed to save");
      }
      });
  }
});
