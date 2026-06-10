/*(document).ready(function(){
    $('#reg_product_form').submit(function(e){
     e.preventDefault();
     var spinner = '<div class="spinner-border text-warning" role="status" style="height: 20px; width:20px;"><span class="sr-only">Loading...</span></div>'
     console.log("login button clicked");
     $("#spin_message").html(spinner);
              $.ajax({ 
                  url: "phpfile/reg_product.php",
                  method: "POST",
                  data: new FormData(this),
                  contentType:false,
                  processData:false,
                  success:function(response){
                    $("#reg_p_message").show();
                    $("#reg_p_message").html(response);
                  }
              });     
    });
  });*/

$(document).ready(()=>{
  $("#reg_product_form").on("submit",(e)=>{
    e.preventDefault();
    var spinner = '<div class="spinner-border text-warning" role="status" style="height: 20px; width:20px;"><span class="sr-only">Loading...</span></div>'
    console.log("register product");
    $("#spin_message").html(spinner);
    var formData = new FormData(document.getElementById("reg_product_form"));

    $.ajax({  
      url:"phpfile/reg_product.php",
      type:"POST",
      data:formData,
      processData:false,
      contentType:false
    }).done((response)=>{
      $("#spin_message").text("");
      console.log(response);
      $("#reg_p_message").html(response);
    })
  })
})