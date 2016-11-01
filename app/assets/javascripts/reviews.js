// I have Turbolinks turned off

$(document).ready(function(){

  // $(SELECT THE THING YOU'RE TRYING TO AJAX).on('ajax:success', function(event, response){
    // PUT WHATEVER CRAP YOU WANT IN HERE
  // })

  // $('.new_review_link').on('ajax:success', function(event, response){
  //   console.log(event);
  //   console.log(response);
  //
  //   $('#form-container').append(response);
  // });

  // $('#form-container').on('ajax:complete', '#new-review', function(event, response){
  //   console.log("we gucci?");
  //   console.log(response);
  // })

  $('#new_review').on('ajax:success', function(event, response){
    console.log(response);
  });
})
