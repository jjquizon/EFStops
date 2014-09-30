 $(document).ready(function(){

    var Tags = [
    "Architecture", "Animals", "Art", "Automobiles",
      "Celebrity", "Design", "Fashion", "Film", "Food", "Funny",
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
          $searchDiv.tooltip({
            content: "Must enter valid tag",
            position: {
              my: "center bottom-20",
              at: "center top",
              using: function( position, feedback ) {
                $( this ).css( position );
                $( "<div>" )
                  .addClass( "arrow" )
                  .addClass( feedback.vertical )
                  .addClass( feedback.horizontal )
                  .appendTo( this );
              }
            }
        });
        setTimeout(function () { $searchDiv.tooltip("destroy");}, 3000);
     }
  });

});
