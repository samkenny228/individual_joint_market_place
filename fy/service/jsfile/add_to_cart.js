$(document).ready(function(){
    $('.btn_add_to_cart').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_add_to_cart");
        var btn_add_to_cart = $form.find(".btn_add_to_cart").val();
        var p_unique_id = $form.find(".p_unique_id").val();
        var user_order_id = $form.find(".user_order_id").val();
        var brand_unique_id = $form.find(".brand_unique_id").val();

    $.ajax({
        url: "phpfile/add_to_cart.php",
        method: "post",
        data: {btn_add_to_cart:btn_add_to_cart,p_unique_id:p_unique_id,user_order_id:user_order_id,brand_unique_id:brand_unique_id},
        success:function(response){
            $("#span_num_cart").html(response);
        }
    });                
    }); 
});