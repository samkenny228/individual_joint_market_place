$(document).ready(function(){
    setInterval(()=>{
    $('.num_of_or').load('phpfile/fetch_num_of_or.php')
}, 3000);
})