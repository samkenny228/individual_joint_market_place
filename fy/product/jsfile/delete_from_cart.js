$(document).ready(function(){
    $('.btn_delete_from_cart').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_cart_delete");
        var btn_delete_from_cart = $form.find(".btn_delete_from_cart").val();
        var cart_unique_id = $form.find(".cart_unique_id").val();
        var user_order_id = $form.find(".user_order_id").val();
        var brand_unique_id = $form.find(".brand_unique_id").val();
        var product_category_name = $form.find(".product_category_name").val();

    $.ajax({
        url: "phpfile/delete_from_cart.php",
        method: "post",
        data: {btn_delete_from_cart:btn_delete_from_cart,cart_unique_id:cart_unique_id,user_order_id:user_order_id,brand_unique_id:brand_unique_id,product_category_name:product_category_name},
        success:function(response){
            $("#delect_cart_message").html(response);
        }
    });                
    }); 
});