$(document).ready(function(){
  $('.edit_idea').on('ajax:success',function(xhr, data, status){
    $("#votes_" + data.id).text(data.votes);
  }).on('ajax:error',function(xhr, status, error){
    alert("Oops");
  });
});
