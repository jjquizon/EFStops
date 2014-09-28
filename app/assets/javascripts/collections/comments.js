EfStops.Collections.Comments = Backbone.Collection.extend({
  model: EfStops.Models.Comment,
  url: "comments/",

  comparator: function (comment) {
    return  comment.get('id');
  }
});
