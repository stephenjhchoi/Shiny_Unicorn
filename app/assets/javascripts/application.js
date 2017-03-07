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
//= require smoothscroll
//= require flip
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



$('.venue-glow-btn').on('click', function() {
  $(this).toggleClass("active");
});


$( document ).ready(function () {
  $('[data-toggle="tooltip"]').tooltip();
  $(".mood-choice input").click(function(){
    $(this).parent().toggleClass("active");
  });
});


$('.venue-category').click(function () {
  $(this).toggleClass("checked").toggleClass("unchecked");

  var checkbox = $(this).find("input[type='checkbox']");

    if( !checkbox.prop("checked") ){
        checkbox.prop("checked",true);
    } else {
        checkbox.prop("checked",false);
    }
});

