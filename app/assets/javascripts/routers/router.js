EfStops.Routers.AppRouter = Backbone.Router.extend({
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
    this.currentUser = EfStops.users.get({ id: currentUserId });
  },

  routes: {
    "": "showCurrentUserProfile",
    "users/:id" : "showUserProfile",
    "upload" : "uploadPicture"
  },

  uploadPicture: function(){
    var user = EfStops.users.getOrFetch(currentUserId);
    var view = new EfStops.Views.Upload({ user: user });
    this._swapView(view);
  },

  showCurrentUserProfile: function() {
    var user = EfStops.users.getOrFetch(currentUserId);
    var currentUserProfile = new EfStops.Views.UserProfile({ model: user });
    this._swapView(currentUserProfile);
  },

  showUserProfile: function(id) {
    var user = EfStops.users.getOrFetch(id);
    // user.userImages().fetch();
    var userProfile = new EfStops.Views.UserProfile({ model: user });
    this._swapView(userProfile);
  },


  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }


});
