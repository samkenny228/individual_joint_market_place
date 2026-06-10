$(document).ready(function(){
    $('.btn_display_orders').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".form_dispay");
        var btn_display_orders = $form.find(".btn_display_orders").val();

    $.ajax({
        url: "phpfile/display_orders.php",
        method: "post",
        data: {btn_display_orders:btn_display_orders},
        success:function(response){
            $("#display_p_category").html(response);
        }
    });                
    }); 
});