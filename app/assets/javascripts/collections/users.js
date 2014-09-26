EfStops.Collections.Users = Backbone.Collection.extend({
  model: EfStops.Models.User,
  url: "/users",

  initialize: function() {
  },


  getOrFetch: function (id) {
    var user = EfStops.users.get(id);

    if (!user) {
      user = new EfStops.Models.User({ id: id });
      user.fetch({
        success: function() {
          EfStops.users.add(user);
        }
      });
    } else {
      user.fetch();
    }

    return user;
  },


});

EfStops.users = new EfStops.Collections.Users();
