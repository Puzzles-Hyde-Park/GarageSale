$(document).ready(function(){
    $("#login-button").click(function(){
        $(".collapse#sign-up").collapse('hide');
        $("#sign-up-button").addClass('hidden');
    });
    $("#sign-up-button").click(function(){
        $(".collapse#login").collapse('hide');
        $("#login-button").addClass('hidden');
    });
    $(".row").not(".btn").click(function(){
        $("#sign-up-button").removeClass('hidden');
        $("#login-button").removeClass('hidden');
    });
});
