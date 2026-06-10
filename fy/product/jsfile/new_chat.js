$(document).ready(function(){
    setInterval(()=>{
    $('.new_chat').load('phpfile/new_chat.php')
}, 500);
})