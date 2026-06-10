$(document).ready(function(){
    $('.btn_submit_newpassword').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_submit_code");
        var btn_submit_newpassword = $form.find(".btn_submit_newpassword").val();
        var adderss = $form.find(".adderss").val();
        var new_password = $form.find(".new_password").val();
        var confirm_password = $form.find(".confirm_password").val();

    $.ajax({
        url: "phpfile/newpassword.php",
        method: "post",
        data: {btn_submit_newpassword:btn_submit_newpassword,adderss:adderss,new_password:new_password,confirm_password:confirm_password},
        success:function(response){
            $("#newpassword_message").html(response);
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
                    $("#forget_code_message").html(response);
                }
            });                
            }); 
        });