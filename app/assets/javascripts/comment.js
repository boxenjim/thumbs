$(document).ready(function(){
  $('#comment_form').on('ajax:success',function(xhr, data, status){
    $("ul#comments").append("<li>" + data.content + "</li>");
    $("#comment_form").trigger("reset");
  }).on('ajax:error',function(xhr, status, error){
    alert("Oops");
  });
});
