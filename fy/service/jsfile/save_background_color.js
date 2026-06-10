$(document).ready(function(){
    $('.btn_background_color').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".background_color_form");
        var btn_background_color = $form.find(".btn_background_color").val();
        var background_color = $form.find(".background_color").val();

    $.ajax({
        url: "phpfile/save_background_color.php",
        method: "post",
        data: {btn_background_color:btn_background_color,background_color:background_color},
        success:function(response){
            $("#display_background_color").html(response);
        }
    });                
    }); 
});