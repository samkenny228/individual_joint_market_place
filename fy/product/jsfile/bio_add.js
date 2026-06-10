$(document).ready(function(){
    $('.bio_add').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_dispay");
        var bio_add = $form.find(".bio_add").val();

    $.ajax({
        url: "phpfile/bio_add.php",
        method: "post",
        data: {bio_add:bio_add},
        success:function(response){
            $("#display_p_category").html(response);
        }
    });                
    }); 
});

$(document).ready(function(){
    $('.btn_update_bio').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".add_bio_form");
        var btn_update_bio = $form.find(".btn_update_bio").val();
        var input_bio = $form.find(".input_bio").val();

    $.ajax({
        url: "phpfile/bio_add.php",
        method: "post",
        data: {btn_update_bio:btn_update_bio,input_bio:input_bio},
        success:function(response){
            $("#display_p_category").html(response);
        }
    });                
    }); 
});