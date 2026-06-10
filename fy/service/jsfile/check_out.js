/*
$(document).ready(function(){
    $('.order_btn').click(function(e){
        e.preventDefault();
        var $form = $(this).closest(".check_out_form");
        var order_btn = $form.find(".order_btn").val();
        var brand_unique_id = $form.find(".brand_unique_id").val();
        var user_or_id = $form.find(".user_or_id").val();
        var total_or_items = $form.find(".total_or_items").val();
        var total_or_price = $form.find(".total_or_price").val();
        var who_or_name = $form.find(".who_or_name").val();
        var who_or_address = $form.find(".who_or_address").val();
        var delivery_or_carryout = $form.find(".delivery_or_carryout").val();
        var who_or_phone_num = $form.find(".who_or_phone_num").val();
        var product_category_name = $form.find(".product_category_name").val();

    $.ajax({
        url: "phpfile/check_out.php",
        method: "post",
        data: {order_btn:order_btn,brand_unique_id:brand_unique_id,user_or_id:user_or_id,
              total_or_items:total_or_items,total_or_price:total_or_price,who_or_name:who_or_name,
              who_or_address:who_or_address,delivery_or_carryout:delivery_or_carryout,
              who_or_phone_num:who_or_phone_num,product_category_name:product_category_name},
        success:function(response){
            $("#order_message").html(response);
        }
    });                
    }); 
});
*/

$(document).ready(()=>{
    $("#check_out_form").on("submit",(e)=>{
      e.preventDefault();
      var spinner = '<div class="spinner-border text-warning" role="status" style="height: 20px; width:20px;"><span class="sr-only">Loading...</span></div>'
      console.log("register product");
      $("#spin_message").html(spinner);
      var formData = new FormData(document.getElementById("check_out_form"));
  
      $.ajax({  
        url:"phpfile/check_out.php",
        type:"POST",
        data:formData,
        processData:false,
        contentType:false
      }).done((response)=>{
        $("#spin_message").text("");
        console.log(response);
        $("#order_message").html(response);
      })
    })
  })