EfStops.Views.ExploreTags = Backbone.View.extend({
  template: JST["explore/searchtags"],
  tagName: 'li',
  initialize: function(options){
    this.tag = options.tag;
  },

  render: function () {
    var renderedContent = this.template({ tag: this.tag });
    this.$el.html(renderedContent);
    this.$el.find('#header-color').css('background-image', "url(" + this.tag.image_url + ")");
    this.$el.find('#explore-box-header').css('background', this.tag.color);
    return this;
  }

});
