<?php
include_once "check_session.php";
$select_buyerchat = mysqli_query($conn, "SELECT * FROM start_chat WHERE brand_unique_id = '$brand_unique_id' ORDER by chat_id DESC");
$update_newchat = mysqli_query($conn, "UPDATE brand_register SET new_chat = '' WHERE b_unique_id ='$brand_unique_id'");

if(mysqli_num_rows($select_buyerchat) > 0){ 
    while($new_chathistory = mysqli_fetch_assoc($select_buyerchat)){
        $buyer_chat_name =  $new_chathistory["buyer_chat_name"];
        $cc =  $new_chathistory["chat_unique_id"];
        $cc_status =  $new_chathistory["status"];
        $slect_lastmessage = mysqli_query($conn, "SELECT * FROM messages WHERE outgoing_id = '$cc' OR  incoming_id = '$cc' ORDER by msg_id DESC");
        $fecth_lastmessage = mysqli_fetch_assoc($slect_lastmessage);
        ?>
<a href="chat.php?cc=<?=$cc?>" class="link_chathistory">
<div>
<h5>   
<i class="bi bi-dot"></i>
<?= $buyer_chat_name ?>
</h5>
<small class="small_lastmsg">
<span class="span_offline_small"> 
  
</span> 
<?php
 if($fecth_lastmessage['msg'] == ""){
  echo 'No message available.';
 }else{
  (strlen($fecth_lastmessage['msg']) > 28) ? $lastmsg = substr($fecth_lastmessage['msg'], 0, 28).'...' : $lastmsg = $fecth_lastmessage['msg'];
  ($cc == $fecth_lastmessage['outgoing_id']) ? $you = "<b>Buyer: </b>" : $you = "";
  echo $you.' '.$lastmsg;
 }
?>
</small>
</div>
</a>
<hr>
  <?php  }}else{ ?>
<div>
<small>No avaliable chat </small>
</div>
<?php }
?>
