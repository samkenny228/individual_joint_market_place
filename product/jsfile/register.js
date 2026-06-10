$(document).ready(function(){
            $('.reg_form').submit(function(e){
             e.preventDefault();
                      $.ajax({ 
                          url: "phpfile/insert_register.php",
                          method: "POST",
                          data: new FormData(this),
                          contentType:false,
                          processData:false,
                          success:function(response){
                            $("#reg_message").show();
                              $("#reg_message").html(response);
                          }
                      });     
            });
          });