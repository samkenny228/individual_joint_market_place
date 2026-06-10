$(document).ready(function(){
    $('.btn_edit_p').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_p_details");
        var btn_edit_p = $form.find(".btn_edit_p").val();
        var p_unique_id = $form.find(".p_unique_id").val();
        var product_name = $form.find(".product_name").val();

    $.ajax({
        url: "phpfile/edit_product.php",
        method: "post",
        data: {btn_edit_p:btn_edit_p,p_unique_id:p_unique_id,product_name:product_name},
        success:function(response){
            $("#edit_message").html(response);
        }
    });                
    }); 
});