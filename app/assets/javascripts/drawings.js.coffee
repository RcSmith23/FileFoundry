$(function(){
  $("div.design-background-wrapper").hover(function() {
    $( this ).find(".details").fadeIn(400);
  }, function() {
    $( this ).find(".details").fadeOut(250);
  });
});
