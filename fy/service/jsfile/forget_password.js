/*$(document).ready(function(){
    $('.forget_password_form').submit(function(e){
     e.preventDefault();
              $.ajax({ 
                  url: "phpfile/forget_password.php",
                  method: "POST",
                  data: new FormData(this),
                  contentType:false,
                  processData:false,
                  success:function(response){
                    $("#forget_password_message").show();
                      $("#forget_password_message").html(response);
                  }
              });     
    });
  });*/


  $(document).ready(()=>{
    $("#forget_password_form").on("submit",(e)=>{
      e.preventDefault();
      var spinner = '<div class="spinner-border text-warning" role="status" style="height: 20px; width:20px;"><span class="sr-only">Loading...</span></div>'
      console.log("forget password");
      $("#spin_message").html(spinner);
      var formData = new FormData(document.getElementById("forget_password_form"));
  
      $.ajax({  
        url:"phpfile/forget_password.php",
        type:"POST",
        data:formData,
        processData:false,
        contentType:false
      }).done((response)=>{
        $("#spin_message").text("");
        console.log(response);
        $("#forget_password_message").html(response);
      })
    })
  })