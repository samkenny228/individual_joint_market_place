$(document).ready(function(){
    $('.btn_delete_p').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_p_details");
        var btn_delete_p = $form.find(".btn_delete_p").val();
        var p_unique_id = $form.find(".p_unique_id").val();
        var product_name = $form.find(".product_name").val();

    $.ajax({
        url: "phpfile/delete_product.php",
        method: "post",
        data: {btn_delete_p:btn_delete_p,p_unique_id:p_unique_id,product_name:product_name},
        success:function(response){
                    $("#delete_message").show();
                    $("#delete_message").html(response);
        }
    });                
    }); 
});