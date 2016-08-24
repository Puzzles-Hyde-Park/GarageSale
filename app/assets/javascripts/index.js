$(document).ready(function(){
    $("#login-button").click(function(){
        $(".collapse#sign-up").collapse('hide');
    });
    $("#sign-up-button").click(function(){
        $(".collapse#login").collapse('hide');
    });
});
