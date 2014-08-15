$(function() {
  mainMenu();
});

var mainMenu = function() {
  console.log("YO");
  $('#mainMenu').on('ajax:success', function(e, data, status, xhr){
    $('#mainMenu').css('margin-top', '0').html(data)
  }).on('ajax:complete', function(e){
    var id = e.target.id
    if (id === 'sign-in-button') {
      $('#login_form').submit()
    }
  });
}