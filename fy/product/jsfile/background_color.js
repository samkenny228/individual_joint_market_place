$(document).ready(function(){
    $('.background_color').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_dispay");
        var background_color = $form.find(".background_color").val();

    $.ajax({
        url: "phpfile/background_color.php",
        method: "post",
        data: {background_color:background_color},
        success:function(response){
            $("#display_p_category").html(response);
        }
    });                
    }); 
});
