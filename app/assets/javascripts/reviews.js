$(document).ready(function(){
  $('.new_review_link').on('ajax:success', function(event, response){
    var newFormContainer = $('#form-container');
    console.log("we in?");
    console.log(response);
    newFormContainer.append(response);
  });

  $('.new_review').on('ajax:success', function(event, response){
    console.log(response);
  })
})
