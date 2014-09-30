EfStops.Views.Explore = Backbone.CompositeView.extend({
  template: JST["images/images_explore"],

  initialize: function () {

    this.TAGS = [
      "Architecture", "Animals", "Art", "Automobiles",
      "Celebrity", "Design", "Fashion", "Film", "Food", "Funny",
      "Illustrations", "Music", "Nature", "Photography",
      "Religion", "Romance", "Sports", "Toys", "Travel", "Typography",
      "Urban", "Weddings"];

    this.$el.addClass("clearfix");
    this.$el.css('width', '100%');
    this.$el.css('margin-left', 'auto');
    this.$el.css('margin-right', 'auto');
    EfStops.SearchTags.forEach(function (tag) {
      this.addTagDiv(tag);
    }.bind(this));

  },

  addTagDiv: function (tag) {
    var view = new EfStops.Views.ExploreTags({
      tag: tag
    });

    this.addSubview("#tags-list", view);
  },

  render: function () {
    var renderedContent = this.template({
      tags: this.TAGS,
      });

    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },

  renderTagDivs: function () {
    rendered = this.subviews();
  }

  // render: function () {
  //   var content = this.template({
  //     board: this.model
  //   });
  //   this.$el.html(content);
  //   this.renderLists();
  //   this.renderListForm();
  //   return this;
  // },
  //
  // renderLists: function () {
  //   this.model.lists().each(this.addList.bind(this));
  //   this.$('#lists').sortable();
  // },
  //
  // renderListForm: function () {
  //   var view = new TrelloClone.Views.ListForm({
  //     collection: this.collection
  //   });
  //   this.addSubview('#list-form', view);
  // }
});
