<?php
session_start();
include_once "connectdb.php";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
if(isset($_POST['forget_password_inp'])){
    $forget_password_inp = htmlentities(mysqli_real_escape_string($conn, $_POST['forget_password_inp']));

if(empty($forget_password_inp)){
    echo "<script>alert('All input field are required!')</script>"; 
    exit();
}

$select_reg_brand_email = mysqli_query($conn, "SELECT * FROM brand_register WHERE email = '$forget_password_inp'");
if(mysqli_num_rows($select_reg_brand_email) < 1){
    echo "<script>alert('Email address dose not exist!')</script>"; 
    exit();
}

$time = time();
$rand_num = rand(1, 9999);
$code = $rand_num;

$ex_time = date("Y-m-d H:i:s", time() + 60 * 2);

$message_to_email = "Ignore if you don't request for code ".""."<br>"
.""."CODE: "."".$code." "."don't share with anyone<br>"
;

//email cofig start
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

$mail->addAddress($forget_password_inp);

$mail->isHTML(true);

$mail->Subject = 'Reset your password';
$mail->Body = $message_to_email;

$mail->send();

// when email is sent

if(!$mail){
    echo "<script>alert('Somthing went wrong try again!')</script>"; 
    exit();
}

$save_forget_password_code =  mysqli_query($conn, "insert into forget_password(address, code, time_expired)
values('$forget_password_inp', '$code', '$ex_time')");

if($save_forget_password_code){
    $last_id = mysqli_insert_id($conn);
    if($last_id){
        $rand_code = rand(1, 9999);
        $code_unique_id = $forget_password_inp."_".$rand_code."".$last_id."";
        $update_brand_unique_id = mysqli_query($conn, "UPDATE forget_password SET code_unique_id = '$code_unique_id' WHERE code_id = '$last_id'");
    }

    if(!$save_forget_password_code){
        echo "<script>alert('Somthing went wrong try again!')</script>"; 
        exit();
    }

    $_SESSION["gmail_address_forget_password"] = $forget_password_inp;

    if(!isset($_SESSION['gmail_address_forget_password'])){
        echo "<script>alert('Somthing went wrong try again!')</script>";
        exit();
    }


    $address = htmlentities(mysqli_real_escape_string($conn, $_SESSION["gmail_address_forget_password"]));
    $check_session_email_db = mysqli_query($conn, "SELECT * FROM forget_password WHERE address = '$address'");
    if(mysqli_num_rows($check_session_email_db) < 1){
        echo "<script>alert('Somthing went wrong try again!')</script>"; 
        exit();
    } ?>


<div class="divshow">
<div class="divinnershow">  
<div class="insidediv">

<form  method="post" action="" class="form_submit_code">
<button type="submit" name="btn_cancel_forget_password_message" class="btncancel btn_cancel_forget_password_message">
<i class="fa-solid fa-xmark"></i>
</button>
<br><hr>
<div class="div_display_category">

<div class="div_jumbo_login">

    <h1 class="reg_heading">Enter code recived</h1>
    <input type="text" name="forget_code" class="inp_reg_style forget_code" placeholder="Code"><br>
    <button class="btn_reg_submit btn_submit_code">Submit code</button>
    
</div>

</div>
<br>
<button type="submit" name="btn_cancel_forget_password_message" class="btncancel_text btn_cancel_forget_password_message">
Cancel
</button>
</form>

<br>
</div>
</div>
</div>
<script src="jsfile/change_password.js"></script>
<?php
}
}
?>