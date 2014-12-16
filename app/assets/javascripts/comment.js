$(document).ready(function(){
  $('#comment_form').on('ajax:success',function(xhr, data, status){
    console.log(data)
    $("ul#comments").append("<li>" + data.content + "</li>")
  }).on('ajax:error',function(xhr, status, error){
    alert("Oops");
  });
});
