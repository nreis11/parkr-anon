// I have Turbolinks turned off

$(document).ready(function(){

  // $(SELECT THE THING YOU'RE TRYING TO AJAX).on('ajax:success', function(event, response){
    // PUT WHATEVER CRAP YOU WANT IN HERE
  // })

  $('.new_review_link').on('ajax:success', function(event, response){
    console.log(event);
    console.log(response);
    
    $('.new_review_link').hide()
    $('#form-container').html(response);
  });

  $('#form-container').on('ajax:success', '#new_review', function(event, response){
    console.log("we gucci?");
    console.log(response);
    $('#form-container').empty()
    $('.new_review_link').show()
  })

  // $('#new_review').on('ajax:success', function(event, response){
  //   console.log(response);
  // });
})
