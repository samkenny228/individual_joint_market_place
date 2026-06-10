$(document).ready(function(){
    setInterval(()=>{
    $('.new_chat').load('phpfile/new_chat_buyer.php')
}, 500);
})