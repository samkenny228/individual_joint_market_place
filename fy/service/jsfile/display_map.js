$(document).ready(function(){
    $('.btn_display_map').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_cart");
        var btn_display_map = $form.find(".btn_display_map").val();
        var brand_unique_id = $form.find(".brand_unique_id").val();

    $.ajax({
        url: "phpfile/display_map.php",
        method: "post",
        data: {btn_display_map:btn_display_map,brand_unique_id:brand_unique_id},
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
        url: "phpfile/display_p_category.php",
        method: "post",
        data: {cancel:cancel},
        success:function(response){
            $("#check_num_cart_message").html(response);
        }
    });                
    }); 
});
