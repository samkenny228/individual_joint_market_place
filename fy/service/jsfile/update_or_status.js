$(document).ready(function(){
    $('.btn_or_complete').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_update_or_status");
        var btn_or_complete = $form.find(".btn_or_complete").val();
        var or_unique_id = $form.find(".or_unique_id").val();

    $.ajax({
        url: "phpfile/update_or_status.php",
        method: "post",
        data: {btn_or_complete:btn_or_complete,or_unique_id:or_unique_id},
        success:function(response){
            $("#update_or_status_message").html(response);
        }
    });                
    }); 
});