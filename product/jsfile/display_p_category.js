$(document).ready(function(){
    $('.btn_display_p_category').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_dispay");
        var btn_display_p_category = $form.find(".btn_display_p_category").val();

    $.ajax({
        url: "phpfile/display_p_category.php",
        method: "post",
        data: {btn_display_p_category:btn_display_p_category},
        success:function(response){
            $("#display_p_category").html(response);
        }
    });                
    }); 
});