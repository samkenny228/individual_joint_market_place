
$(document).ready(function(){
    $('.cancel_edit_message').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_edit_p");
        var cancel_edit_message = $form.find(".cancel_edit_message").val();

    $.ajax({
        url: "phpfile/edit_product.php",
        method: "post",
        data: {cancel_edit_message:cancel_edit_message},
        success:function(response){
            $("#edit_message").html(response);
        }
    });                
    }); 
});