EfStops.Routers.AppRouter = Backbone.Router.extend({
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
    this.currentUser = EfStops.users.get({ id: currentUserId });
    this.feedCollection = options.collection;
  },

  routes: {
    "": "showUserFeed",
    "/": "showUserFeed",
    "you": "showCurrentUserProfile",
    "upload": "uploadImage",
    "explore": "whatsNew",
    "users": "usersIndex",
    "users/:id": "showUserProfile",
    "users/:id/feed": "showUserFeed",
    "users/:id/:activeLink": "showUserProfileAlbums",
    "users/:userid/albums/:albumid": "albumShow",
    "images/new": "whatsNew",
    "images/:id": "showImage",
    "search/:tag": "searchByTag",
    "img-upload": "imageUpload"
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

  showUserProfileAlbums: function(id, activeLink) {
    var user = EfStops.users.getOrFetch(id);
    var userProfile = new EfStops.Views.UserProfile({
      model: user,
      activeLink: activeLink
    });
    this._swapView(userProfile);
  },

  showExplore: function() {
    var exploreView = new EfStops.Views.Explore();
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
    var collection = EfStops.userImages.fetchByTag(tag);
    var tagView = new EfStops.Views.SearchByTag({
        tag: tag,
        collection: collection
      });
    this._swapView(tagView);
  },

  albumShow: function(userid, albumId) {
    var user = EfStops.users.getOrFetch(userid);
    var album = EfStops.albums.getOrFetch(albumId);
    var albumShowView = new EfStops.Views.ShowAlbum({
      user: user,
      album: album
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

  showUserFeed: function (id) {
    var currentUser = EfStops.users.getOrFetch(currentUserId);
    var feedView = new EfStops.Views.UserFeed({
      model: currentUser,
      collection: this.feedCollection
    });

    this._swapView(feedView);
  },

  whatsNew: function (){
    EfStops.WhatsNew.fetch();
    var whatsNewView = new EfStops.Views.WhatsNew({
      data: { page: 1 },
      collection: EfStops.WhatsNew
    });

    this._swapView(whatsNewView);
  },

  imageUpload: function () {
    var imageUploadView = new EfStops.Views.ImageUploadModal();
    this._swapView(imageUploadView);
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }


});
