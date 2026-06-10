<?php 
include("header.php");
if(!isset($_GET["cc"])){
    echo "<script>alert('Something went wrong')</script>";
    echo "<script>window.open('index.php', '_self')</script>";
    exit();
}

$cc = mysqli_real_escape_string($conn, $_GET["cc"]);
$select_cc = mysqli_query($conn, "select * from start_chat where chat_unique_id = '$cc'");
if(mysqli_num_rows($select_cc) < 1){
    echo "<script>alert('Something went wrong')</script>";
    echo "<script>window.open('index.php', '_self')</script>";
    exit();
}

$fetch_cc_details = mysqli_fetch_assoc($select_cc);
$cc_name = $fetch_cc_details["buyer_chat_name"];
$cc_status = $fetch_cc_details["status"];

?>
<div style="margin-bottom:65px;"></div>

<div class="container">
<div class="div_jumbo_chat">
<h4 class="h4_chatbuyer">
     <?= 'Buyer- '.$cc_name?>
</h4>
<hr>

<div class="div_in_chat">
<div class="div_messahes">

 </div>
</div>

<div class="div_input_chat">
<form action="#" class="form_chat" autocomplete="off">
<input type="hidden" name="outgoing_id" class="outgoing_id" placeholder="chat" value="<?=$brand_unique_id?>">
<input type="hidden" name="incoming_id" class="incoming_id" placeholder="chat" value="<?=$cc?>">
<input type="text" name="inp_chat" class="inp_chat" placeholder="chat">
<!--<span class="span_in_chat"><i class="bi bi-card-image"></i></span> -->
<button class="btn_sendchat">
  <span class="span_in_chat"><i class="bi bi-telegram"></i></span>
</button>
</form>
<small style="color: red; margin:0px">Tap on your message to hold chat</small>
</div>

</div>
</div>

<script src="jsfile/chat.js"></script>

<?php 
include("footer.php");
?>    