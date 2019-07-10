$(document).ready(function() {

  // Sidebar Functionality
  $("#menuOpen").click(function() {
    $(".sidebar").addClass('show');
    $(".sidebar").removeClass('hide');
  });

  $("#menuClose").click(function() {
    $(".sidebar").removeClass('show');
    $(".sidebar").addClass('hide');
  });

  $(window).click(function() {
    $(".sidebar").removeClass('show');
    $(".sidebar").addClass('hide');
  });

  $('#menuOpen').click(function(event) {
    event.stopPropagation();
  });
});
