//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-slider
//= require_tree .


$( document ).ready(function() {
$("#ex9").slider({
  precision: 1,
  value: 0 // Slider will instantiate showing 8.12 due to specified precision
});
});


$( document ).ready(function() {
  $("#ex11").slider({step: 1, min: 0, max: 10
  });
});

