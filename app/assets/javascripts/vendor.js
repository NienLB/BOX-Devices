//= require vendors/popper.min
//= require vendors/bootstrap

$(document).ready(function() {
  console.log("Application work");
  $('[data-toggle="tooltip"]').tooltip();
  $('.dropdown-toggle').dropdown()
});