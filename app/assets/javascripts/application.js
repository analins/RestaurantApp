// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize

$(document).ready(function() {
    $(".button-collapse").sideNav();
    $('select').material_select();
    ColorChange();
    Refresh();

});


function ColorChange(){
  var $allOrders = $('.color-status');
  $allOrders.children('li').each(function(){
    var $order = $(this);
    var waitTime = $order.data('status');
    console.log(waitTime);

    if (waitTime >= 3){
      $order.css({'background-color': 'red',  'color': 'gray'}).fadeIn(100).fadeOut(100).fadeIn(100);
    } else if (waitTime >= 2){
      $order.css({'background-color': 'orange',  'color': 'gray'});
    } else if (waitTime >= 1){
      $order.css({'background-color': 'yellow',  'color': 'gray'});
    } else if (waitTime < 1){
      $order.css({'background-color': 'green',  'color': 'gray'});
    }

  });
}

function Refresh(){
  setInterval(ColorChange, 30000);
}
