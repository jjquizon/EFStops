EfStops.Views.WhatsNew = Backbone.View.extend({
  template: JST["images/whats_new"],

  initialize: function () {
    this.listenTo(this.collection, 'add sync', this.render);
  },

  render: function () {
    var renderedContent = this.template({
      images: this.collection
    });
    this.$el.html(renderedContent);
    return this;
  }
});
