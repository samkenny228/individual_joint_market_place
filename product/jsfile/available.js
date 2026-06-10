$(document).ready(function(){
    $('.btn_available').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_p_details");
        var btn_available = $form.find(".btn_available").val();
        var p_unique_id = $form.find(".p_unique_id").val();
        var product_name = $form.find(".product_name").val();

    $.ajax({
        url: "phpfile/available.php",
        method: "post",
        data: {btn_available:btn_available,p_unique_id:p_unique_id,product_name:product_name},
        success:function(response){
            $("#delete_message").html(response);
        }
    });                
    }); 
});