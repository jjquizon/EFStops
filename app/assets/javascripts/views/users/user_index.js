EfStops.Views.UsersIndex = Backbone.View.extend({
  template: JST["users/users_index"],

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render);
    this.updateUsers();
  },

  render: function () {
    var renderedContent = this.template({ users: this.collection });
    this.$el.html(renderedContent);
    return this;
  },

  updateUsers: function () {
    var that = this;
    this.collection.fetch({
      success: function(users) {
        users.each(function (user){
          that.listenTo(user, 'sync', this.render);
          user.fetch();
        });
      }
    });
  }

});
