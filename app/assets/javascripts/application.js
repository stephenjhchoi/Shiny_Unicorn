//= require jquery
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


$('.venue-glow-btn').on('click', function() {
  $(this).toggleClass("active");
});



// // Get the <datalist> and <input> elements.
// var dataList = document.getElementById('json-datalist');
// var input = document.getElementById('ajax');

// // Create a new XMLHttpRequest.
// var request = new XMLHttpRequest();

// // Handle state changes for the request.
// request.onreadystatechange = function(response) {
//   if (request.readyState === 4) {
//     if (request.status === 200) {
//       // Parse the JSON
//       var jsonOptions = JSON.parse(request.responseText);

//       // Loop over the JSON array.
//       jsonOptions.forEach(function(item) {
//         // Create a new <option> element.
//         var option = document.createElement('option');
//         // Set the value using the item in the JSON array.
//         option.value = item;
//         // Add the <option> element to the <datalist>.
//         dataList.appendChild(option);
//       });

//       // Update the placeholder text.
//       input.placeholder = "e.g. datalist";
//     } else {
//       // An error occured :(
//       input.placeholder = "Couldn't load datalist options :(";
//     }
//   }
// };

// // Update the placeholder text.
// input.placeholder = "Loading options...";

// // Set up and make the request.
// request.open('GET', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/4621/html-elements.json', true);
// request.send();

