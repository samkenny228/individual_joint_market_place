const div_live_history = document.querySelector(".div_live_history");

setInterval(()=>{
    let xhr = new XMLHttpRequest();
    xhr.open("GET", "phpfile/chat_history.php", true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let data = xhr.response;
                div_live_history.innerHTML = data;
            }
        }
    }
    xhr.send();   
}, 500)