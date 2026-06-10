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
                    $("#display_p_category").html(response);
                }
            });                
            }); 
        });


        $(document).ready(function(){
            $('.cancel_order_message').click(function(e){
                e.preventDefault();
				var $form = $(this).closest(".form_cancel_or");
				var cancel = $form.find(".cancel_order_message").val();
				var user_or_id = $form.find(".user_or_id").val();
				var brand_unique_id = $form.find(".brand_unique_id").val();
				var product_category_name = $form.find(".product_category_name").val();

            $.ajax({
                url: "phpfile/delete_cart.php",
                method: "post",
                data: {cancel:cancel,user_or_id:user_or_id,brand_unique_id:brand_unique_id,product_category_name:product_category_name},
                success:function(response){
                    $("#order_message").html(response);
                }
            });                
            }); 
        });
        
                $(document).ready(function(){
            $('.cancel_rateus_message').click(function(e){
                e.preventDefault();
				var $form = $(this).closest(".form_cancel_or");
				var cancel_rateus_message = $form.find(".cancel_rateus_message").val();
				var user_or_id = $form.find(".user_or_id").val();
				var brand_unique_id = $form.find(".brand_unique_id").val();
				var product_category_name = $form.find(".product_category_name").val();

            $.ajax({
                url: "phpfile/delete_cart.php",
                method: "post",
                data: {cancel_rateus_message:cancel_rateus_message,user_or_id:user_or_id,brand_unique_id:brand_unique_id,product_category_name:product_category_name},
                success:function(response){
                    $("#order_message").html(response);
                }
            });                
            }); 
        });
