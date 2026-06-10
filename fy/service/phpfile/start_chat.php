<?php
session_start();
include("connectdb.php");
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if(isset($_POST["startchat_input"])){
  
if(empty($_POST["startchat_input"])){
    echo "<script>alert('Field required!')</script>"; 
    exit();
}
$startchat_input = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST["startchat_input"])));
$brand_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST["brand_unique_id"]));
$user_order_id = htmlentities(mysqli_real_escape_string($conn, $_POST["user_order_id"]));
$product_category_name = htmlentities(mysqli_real_escape_string($conn, $_POST["product_category_name"]));
$status = "active_now";





$insert_start_chat = mysqli_query($conn, "INSERT INTO start_chat(buyer_chat_name, user_order_id, brand_unique_id, status)
                     VALUE('$startchat_input', '$user_order_id', '$brand_unique_id', '$status')");
if($insert_start_chat){
        $last_id = mysqli_insert_id($conn);
        if($last_id){
            $code = rand(1, 9999);
            $start_chat_id= $code."".$last_id;
            $update_start_chat_id = mysqli_query($conn, "UPDATE start_chat SET chat_unique_id = '$start_chat_id' WHERE chat_id = '$last_id'");

            if($update_start_chat_id){
              $message_to_email = "New order form kehkehask.com".""."<br>";
                $select_brand_detailes = mysqli_query($conn, "SELECT * FROM brand_register WHERE b_unique_id = '$brand_unique_id'");
                $fetch_brand_detailes = mysqli_fetch_assoc($select_brand_detailes);
         
                $brand_email = $fetch_brand_detailes['email'];   
                
                
                $rand_num = rand(1, 9999);
                $code = $rand_num;
                $message_to_email = "New message form kehkehask.com".""."<br>";
    
                require '../phpmailer/src/Exception.php';
                require '../phpmailer/src/PHPMailer.php';
                require '../phpmailer/src/SMTP.php';
                
                $mail = new PHPMailer(true);
                
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';
                $mail->SMTPAuth = true;
                $mail->Username = 'kehkehask@gmail.com';
                $mail->Password = 'pyoa lzux chaa icev';
                $mail->SMTPSecure = 'ssl';
                $mail->Port = 465;
                
                $mail->setFrom('kehkehask@gmail.com');
                
                $mail->addAddress($brand_email);
                
                $mail->isHTML(true);
                
                $mail->Subject = 'KehkehAsk Message';
                $mail->Body = $message_to_email;
                
                $mail->send();
    
                if($mail){
                    $_SESSION["schat"] = $start_chat_id; 
                    echo "<script>window.open('livechat.php?buid=$brand_unique_id&pcn=$product_category_name', '_self')</script>";
                    exit();
                }
                }
        }
}
}
?>