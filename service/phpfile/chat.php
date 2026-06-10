<?php 
    session_start();
    include("connectdb.php");
    if(isset($_SESSION["brand_unique_id"]) or isset($_SESSION["schat"])){
    $outgoing_id = mysqli_real_escape_string($conn, $_POST["outgoing_id"]);
    $incoming_id = mysqli_real_escape_string($conn, $_POST["incoming_id"]);
    $inp_chat = mysqli_real_escape_string($conn, $_POST["inp_chat"]);
    
    if(!empty($outgoing_id) and !empty($incoming_id) and !empty($inp_chat)){

     
       if($_SESSION["brand_unique_id"]){
            $update_newchat = mysqli_query($conn, "UPDATE start_chat SET new_chat = 1 WHERE chat_unique_id ='$incoming_id'");
       }
       if($_SESSION["schat"]){
           $update_newchat = mysqli_query($conn, "UPDATE brand_register SET new_chat = 1 WHERE b_unique_id ='$incoming_id'");
       }


    $insert_chat = mysqli_query($conn, "INSERT INTO messages (incoming_id, outgoing_id, msg) 
                                         VALUES ('$incoming_id', '$outgoing_id', '$inp_chat')") or die();
    }
    }
?> 