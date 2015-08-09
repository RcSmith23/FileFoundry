// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require_tree .
//= require bootstrap.min
//= require turbolinks
//

$(function(){
  $("div.design-background-wrapper").hover(function() {
    $( this ).find(".details").fadeIn(400);
  }, function() {
    $( this ).find(".details").fadeOut(250);
  });

  $("#trending").on('click', '.tpage', function(e) {
    e.preventDefault();
    $.getScript(this.href);
    return false;
  });

});

/*
 *  Old version for ajax on click
  $(".col-md-15 a").click(function() {
    $.getScript(this.href);
    return false;
  });
*/
