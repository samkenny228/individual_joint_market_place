$(document).ready(function(){
    $('.login_form').submit(function(e){
     e.preventDefault();
              $.ajax({ 
                  url: "phpfile/fyadmin_login.php",
                  method: "POST",
                  data: new FormData(this),
                  contentType:false,
                  processData:false,
                  success:function(response){
                    $("#login_message").show();
                      $("#login_message").html(response);
                  }
              });     
    });
  });