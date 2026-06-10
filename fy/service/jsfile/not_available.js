$(document).ready(function(){
    $('.btn_not_available').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_p_details");
        var btn_not_available = $form.find(".btn_not_available").val();
        var p_unique_id = $form.find(".p_unique_id").val();
        var product_name = $form.find(".product_name").val();

    $.ajax({
        url: "phpfile/not_available.php",
        method: "post",
        data: {btn_not_available:btn_not_available,p_unique_id:p_unique_id,product_name:product_name},
        success:function(response){
            $("#delete_message").html(response);
        }
    });                
    }); 
});