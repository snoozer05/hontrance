$(function() {
  if ($.cookie('visited') === undefined) {
    $.cookie('visited', true);
    $('body').chardinJs('start');
  }
});
