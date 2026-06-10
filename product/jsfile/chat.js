const form = document.querySelector(".form_chat"),
inp_chat = form.querySelector(".inp_chat"),
btn_sendchat = form.querySelector("button"),
div_messahes = document.querySelector(".div_messahes");

form.onsubmit = (e)=>{
    e.preventDefault();
}

btn_sendchat.onclick = ()=> { 
   let xhr = new XMLHttpRequest();
   xhr.open("POST", "phpfile/chat.php", true);
   xhr.onload = ()=>{
    if(xhr.readyState === XMLHttpRequest.DONE){
        if(xhr.status === 200){
          inp_chat.value = "";
          scrollToBottom();
        }
    }
   }
   let formData = new FormData(form);
   xhr.send(formData);
}

div_messahes.onmouseenter = ()=>{
    div_messahes.classList.add("active");
}
div_messahes.onmouseleave = ()=>{
    div_messahes.classList.remove("active");
}

setInterval(()=>{
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "phpfile/get_chat.php", true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let data = xhr.response;
                div_messahes.innerHTML = data;
                if(!div_messahes.classList.contains("active")){
                   scrollToBottom(); 
                }
            }
        }
    }
    let formData = new FormData(form);
    xhr.send(formData);
}, 500); 


function scrollToBottom () { 
   // div_messahes.scrollTo = div_messahes.scrollHeight;
   div_messahes.lastElementChild.scrollIntoView({behavior:"smooth"});
}