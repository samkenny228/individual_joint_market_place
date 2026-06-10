$(document).ready(function(){
    $('.add_location').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_dispay");
        var add_location = $form.find(".add_location").val();

    $.ajax({
        url: "phpfile/add_location.php",
        method: "post",
        data: {add_location:add_location},
        success:function(response){
            $("#display_p_category").html(response);
        }
    });                
    }); 
});


$(document).ready(function(){
    $('.btn_add_map').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".add_map_form");
        var btn_add_map = $form.find(".btn_add_map").val();
        var input_add_map = $form.find(".input_add_map").val();

    $.ajax({
        url: "phpfile/add_location.php",
        method: "post",
        data: {btn_add_map:btn_add_map,input_add_map:input_add_map},
        success:function(response){
            $("#display_p_category").html(response);
        }
    });                
    }); 
});