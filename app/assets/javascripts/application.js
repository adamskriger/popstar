
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
//= require_tree .





//= require('bootstrap-sprockets')
//= require video


$(document).ready(function() {



  var picArray = [$(".pic1"), $(".pic2"),$(".pic3"),$(".pic4")];
  var i=0;


  $(".pic1").click(function(){
    $(".lightbox").show()
    $(".picture-container").append($(".pic1").clone())
    console.log("Click Happened!");
  })

  $(".forward").click(function(){
    if(i<3) {
    i++
    $(".picture-container").empty()
    $(".picture-container").append($(picArray[i]).clone())
  } else if (i>=3) {
    i=0
    $(".picture-container").empty()
    $(".picture-container").append($(picArray[i]).clone())

  }
})

$(".back").click(function(){
  if(i>0) {
  i--
  $(".picture-container").empty()
  $(".picture-container").append($(picArray[i]).clone())
} else if (i==0) {
  i=4
  $(".picture-container").empty()
  $(".picture-container").append($(picArray[i]).clone())

}
})

$(".Add").click(function(){
  console.log("click on Add");
  $(".comments_section").prepend($(comment.content))

})

});
