 $(document).ready(function(){

    var Tags = [
    "Architecture", "Animals", "Art", "Automobiles",
      "Design", "Fashion", "Film", "Food", "Funny",
      "Illustrations", "Music", "Nature", "Photography",
      "Religion", "Romance", "Sports", "Toys", "Travel", "Typography",
      "Urban", "Weddings"];

    var $searchTag = $("#search-tags");
    var $searchButton = $("#tag-submit");
    var $searchDiv = $(".search-tag-div");
    $searchTag.autocomplete({
      source: Tags

    });

    $searchButton.on("click", function (event) {
      event.preventDefault();
      var tagValue = $searchTag.val();
      if (_.include(Tags, tagValue)) {
        Backbone.history.navigate("#/search/" + tagValue, { trigger: true });
        $searchTag.val("");
      } else {
        $searchTag.val("");
        document.getElementById('search-tags').placeholder = "Tag not found";
      }
  });

});
