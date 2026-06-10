
<?php 
session_start();
include("connectdb.php");
if(isset($_SESSION["schat"])){
$schat = $_SESSION["schat"];
$select_new_chat = mysqli_query($conn, "select * from start_chat where chat_unique_id = '$schat'");
$fetch_new_chat = mysqli_fetch_assoc($select_new_chat );
$new_chat = $fetch_new_chat['new_chat'];
}

?>
<?php
if($new_chat == 1){
?>
<sup>
<i class="bi bi-dot" style="color: red; font-size:30px; margin-left:-15px; margin-right:-15px;"></i>
</sup>
<?php } ?>