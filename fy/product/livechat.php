<?php
include("check_out_head.php");
?>
<div style="margin-bottom:65px;"></div>
<div id="startchat_message"></div>
<div class="container">
<div class="div_jumbo_chat">
<?php
if(isset($_SESSION["schat"])){
$buyerchat_id = htmlentities(mysqli_real_escape_string($conn, $_SESSION["schat"]));
$check_buyer_id = mysqli_query($conn, "SELECT * FROM start_chat WHERE chat_unique_id = '$buyerchat_id'");
if(mysqli_num_rows($check_buyer_id) == 0){
    echo "<script>alert('Something went wwrong')</script>";
    echo "<script>window.open('login.php', '_self')</script>";
    exit();
}else{
    include("chat_buyer.php");
}
}else{
    include("chat_login.php"); 
};
?>

</div>
</div>

<script src="jsfile/start_chat.js"></script>
<?php 
include("footer.php");
?>

