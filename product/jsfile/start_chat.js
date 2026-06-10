
$(document).ready(()=>{
    $("#startchat_form").on("submit",(e)=>{
      e.preventDefault();
      var spinner = '<div class="spinner-border text-warning" role="status" style="height: 20px; width:20px;"><span class="sr-only">Loading...</span></div>'
      console.log("register product");
      $("#spin_message").html(spinner);
      var formData = new FormData(document.getElementById("startchat_form"));
  
      $.ajax({  
        url:"phpfile/start_chat.php",
        type:"POST",
        data:formData,
        processData:false,
        contentType:false
      }).done((response)=>{
        $("#spin_message").text("");
        console.log(response);
        $("#startchat_message").html(response);
      })
    })
  })