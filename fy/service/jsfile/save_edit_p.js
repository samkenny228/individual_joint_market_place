$(document).ready(function(){
    $('.form_edit_p').submit(function(e){
     e.preventDefault();
              $.ajax({ 
                  url: "phpfile/save_edit_p.php",
                  method: "POST",
                  data: new FormData(this),
                  contentType:false,
                  processData:false,
                  success:function(response){
                      $("#edit_message").html(response);
                  }
              });     
    });
  });