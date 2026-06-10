
$(document).ready(function(){
    $('.btn_track_order').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".tracking_order_form");
        var btn_track_order = $form.find(".btn_track_order").val();
        var tracking_code = $form.find(".tracking_code").val();

    $.ajax({
        url: "phpfile/track_order.php",
        method: "post",
        data: {btn_track_order:btn_track_order,tracking_code:tracking_code},
        success:function(response){
            $("#tracking_message").html(response);
        }
    });                
    }); 
});


            $(document).ready(function(){
            $('.btn_cancel_forget_password_message').click(function(e){
                e.preventDefault();
				var $form = $(this).closest(".form_submit_code");
				var btn_cancel_forget_password_message = $form.find(".btn_cancel_forget_password_message").val();

            $.ajax({
                url: "phpfile/forget_password.php",
                method: "post",
                data: {btn_cancel_forget_password_message:btn_cancel_forget_password_message},
                success:function(response){
                    $("#tracking_message").html(response);
                }
            });                
            }); 
        });