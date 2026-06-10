$(document).ready(function(){
    $('.btn_display_bio').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_cart");
        var btn_display_bio = $form.find(".btn_display_bio").val();
        var brand_unique_id = $form.find(".brand_unique_id").val();

    $.ajax({
        url: "phpfile/display_bio.php",
        method: "post",
        data: {btn_display_bio:btn_display_bio,brand_unique_id:brand_unique_id},
        success:function(response){
            $("#check_num_cart_message").html(response);
        }
    });                
    }); 
});


$(document).ready(function(){
    $('.cancel').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_cancel");
        var cancel = $form.find(".cancel").val();

    $.ajax({
        url: "phpfile/display_bio.php",
        method: "post",
        data: {cancel:cancel},
        success:function(response){
            $("#check_num_cart_message").html(response);
        }
    });                
    }); 
});
