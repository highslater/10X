# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

###

<script>
  $('.star-rating').raty({
        path: '/assets/',
        score: function() {
          return $(this).attr('data-score');
        }
      });
</script>

###


##### jQuery
jQuery ->

  $('.star-rating').raty({
    path: '/assets/',
    readOnly: true,
    score: -> $(this).attr('data-score'),
});

  $('#star-rating').raty({
    path: '/assets/',
    readOnly: false,
    scoreName: -> 'review[rating]',
});
##### /jQuery