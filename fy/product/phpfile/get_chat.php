<?php 
session_start();
include("connectdb.php");
if(isset($_SESSION["brand_unique_id"]) or isset($_SESSION["schat"])){
    $outgoing_id = mysqli_real_escape_string($conn, $_POST["outgoing_id"]);
    $incoming_id = mysqli_real_escape_string($conn, $_POST["incoming_id"]);
    $output = "";
    
   if($_SESSION["schat"]){
       $update_newchat = mysqli_query($conn, "UPDATE start_chat SET new_chat = '' WHERE chat_unique_id ='$outgoing_id'");
   }

    $select_message = mysqli_query($conn, "SELECT * FROM messages WHERE outgoing_id = '$outgoing_id' AND  incoming_id = '$incoming_id'
                                           OR outgoing_id = '$incoming_id' AND  incoming_id = '$outgoing_id' ORDER BY msg_id");
    if(mysqli_num_rows($select_message) > 0){
        while($messages =  mysqli_fetch_assoc($select_message)){
            if($messages['outgoing_id'] === $outgoing_id){
                $output .= '<div class="chat outgoing_chat">
                            <div class="chat_detailes">
                            <p class="small_chat">'. $messages['msg'] .'</p>
                            </div>
                            </div>';
            }else{
                $output .= '<div class="chat incoming_chat">
                         <div class="chat_detailes">
                         <h6 class="h6_incomingchat"><b>-Incoming chat</b></h6>
                         <p class="small_chat">'. $messages['msg'] .'</p>
                         </div>
                         </div>';
            }
        } 
        echo $output;       
    }
}
?>