
    $(document).ready(function(){
    $('.btn_submit_code').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_submit_code");
        var btn_submit_code = $form.find(".btn_submit_code").val();
        var forget_code = $form.find(".forget_code").val();

    $.ajax({
        url: "phpfile/change_password.php",
        method: "post",
        data: {btn_submit_code:btn_submit_code,forget_code:forget_code},
        success:function(response){
            $("#forget_code_message").html(response);
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
                    $("#forget_password_message").html(response);
                }
            });                
            }); 
        });