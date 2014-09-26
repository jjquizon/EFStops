EfStops.Routers.AppRouter = Backbone.Router.extend({
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
    this.currentUser = EfStops.users.get({ id: currentUserId });
  },

  routes: {
    "": "showCurrentUserProfile",
    "upload": "uploadImage",
    "explore": "showExplore",
    "users": "usersIndex",
    "users/:id": "showUserProfile",
    "images/:id": "showImage",
    "search/:tag": "searchByTag",
    "albums/:id": "albumShow"
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

  searchByTag: function(tag) {
    var collection = EfStops.userImages;
    collection.fetch();
    var tagView = new EfStops.Views.SearchByTag({
        tag: tag,
        collection: collection
      });
    this._swapView(tagView);
  },

  albumShow: function(albumId) {
    var album = EfStops.albums.getOrFetch(albumId);
    var albumShowView = new EfStops.Views.ShowAlbum({
      model: album
    });

    this._swapView(albumShowView);
  },

  usersIndex: function() {
    var users = EfStops.users;

    var usersIndexView = new EfStops.Views.UsersIndex({
      collection: users
    });

    this._swapView(usersIndexView);
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }


});
