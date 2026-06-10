$(document).ready(function(){
    $('.send_contact_us_message').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".contact_us_form");
        var send_contact_us_message = $form.find(".send_contact_us_message").val();
        var full_name = $form.find(".full_name").val();
        var phone_number = $form.find(".phone_number").val();
        var email_address = $form.find(".email_address").val();
        var contact_us_message = $form.find(".contact_us_message").val();

    $.ajax({
        url: "phpfile/contact_us.php",
        method: "post",
        data: {send_contact_us_message:send_contact_us_message,full_name:full_name,phone_number:phone_number,email_address:email_address,contact_us_message:contact_us_message},
        success:function(response){
            $("#contact_us_message").html(response);
        }
    });                
    }); 
});