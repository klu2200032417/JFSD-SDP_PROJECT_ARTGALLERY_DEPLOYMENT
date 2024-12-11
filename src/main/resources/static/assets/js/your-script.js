$(document).ready(function() {
    $(".nav-item").mouseenter(function() {
      var parentNavItem = $(this);
      if (!parentNavItem.hasClass("open")) {
        $(".nav-item.open").removeClass("open");
        parentNavItem.addClass("open");
      }
    });
  
    // Close the hover menu when cursor moves away
    $(".navbar-nav").mouseleave(function() {
      $(".nav-item.open").removeClass("open");
    });
  });
  