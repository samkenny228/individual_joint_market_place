$(document).ready(function(){
    $('.btn_p_img').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_add_to_cart");
        var btn_p_img = $form.find(".btn_p_img").val();
        var p_unique_id = $form.find(".p_unique_id").val();
        var user_order_id = $form.find(".user_order_id").val();
        var brand_unique_id = $form.find(".brand_unique_id").val();

    $.ajax({
        url: "phpfile/display_p_img.php",
        method: "post",
        data: {btn_p_img:btn_p_img,p_unique_id:p_unique_id,user_order_id:user_order_id,brand_unique_id:brand_unique_id},
        success:function(response){
            $("#message_p_img").html(response);
        }
    });                
    }); 
});


$(document).ready(function(){
    $('.cancel').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".cancel_form");
        var cancel = $form.find(".cancel").val();

    $.ajax({
        url: "phpfile/display_p_img.php",
        method: "post",
        data: {cancel:cancel},
        success:function(response){
            $("#message_p_img").html(response);
        }
    });                
    }); 
});