//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require bootstrap-slider
//= require moment
//= require bootstrap-datetimepicker
//= require underscore
//= require gmaps/google
//= require_tree .

$( document ).ready(function() {
$( function() {
    var areas = [
      "Chelsea",
      "Shoreditch",
      "Soho",
      "Knightsbridge",
      "Mayfair",
      "Marylebone",
      "Hampstead",
      "Kensington"
      ];

    $( "#search-input" ).autocomplete({
      source: areas
    });
  } );
});



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


// $('.venue-element').on('click', function() {
//   // $(this).children().find('.venue-glow-btn').toggleClass("active");
//   $(this).toggleClass("element-active");
//   $(this).toggleClass("unselected-hoverable");
// });

$('.venue-button').click(function () {
  $(this).toggleClass("ticked");
  $(this).toggleClass("unticked");

  var checkbox = $(this).find("input[type='checkbox']");

    if( !checkbox.prop("checked") ){
        checkbox.prop("checked",true);
    } else {
        checkbox.prop("checked",false);
    }
});

