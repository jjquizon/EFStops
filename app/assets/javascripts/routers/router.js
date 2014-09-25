EfStops.Routers.AppRouter = Backbone.Router.extend({
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
    this.currentUser = EfStops.users.get({ id: currentUserId });
  },

  routes: {
    "": "showCurrentUserProfile",
    "upload": "uploadImage",
    "explore": "showExplore",
    "users/:id": "showUserProfile",
    "images/:id": "showImage"


  },

  showCurrentUserProfile: function() {
    var currentUser = EfStops.users.getOrFetch(currentUserId);
    var currentUserProfile = new EfStops.Views.UserProfile({ model: currentUser });
    this._swapView(currentUserProfile);
  },

  showUserProfile: function(id) {
    var user = EfStops.users.getOrFetch(id);
    var userProfile = new EfStops.Views.UserProfile({ model: user });
    this._swapView(userProfile);
  },

  showExplore: function() {
    var collection = EfStops.userImages;
    collection.fetch();
    var exploreView = new EfStops.Views.Explore({ collection: collection });
    this._swapView(exploreView);
  },

  uploadImage: function(){
    var user = EfStops.users.getOrFetch(currentUserId);
    var view = new EfStops.Views.Upload({ user: user });
    this._swapView(view);
  },

  showImage: function(id){
    var image = EfStops.userImages.getOrFetch(id);
    var imageView = new EfStops.Views.UserImageShow({ model: image });
    this._swapView(imageView);
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }


});
