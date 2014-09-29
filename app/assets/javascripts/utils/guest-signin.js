$(document).ready(function(){
  $('#guest-signin').on('click', function (event){
    event.preventDefault();
    var $form = $("#guest-signin-form");

    var username = document.createElement("input");
    username.setAttribute("type", "hidden");
    username.setAttribute("name", "user[username]");
    username.value = 'jquizon';

    var password = document.createElement("input");
    password.setAttribute("name", "user[password]");
    password.setAttribute("type", "hidden");
    password.value = 'jquizon';
    $form.append(username).append(password);

    // document.body.appendChild(form);
    $form.submit();
  });
});
