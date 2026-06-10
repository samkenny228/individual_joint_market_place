<?php
session_start();
include_once "connectdb.php";

if(!isset($_SESSION['gmail_address_forget_password'])){
    echo "<script>alert('Somthing went wrong try again!')</script>";
    exit();
}

$address = htmlentities(mysqli_real_escape_string($conn, $_SESSION["gmail_address_forget_password"]));
$check_session_email_db = mysqli_query($conn, "SELECT * FROM forget_password WHERE address = '$address'");
if(mysqli_num_rows($check_session_email_db) < 1){
    echo "<script>alert('Somthing went wrong try again!')</script>"; 
    exit();
} 

$forget_code = htmlentities(mysqli_real_escape_string($conn, $_POST["forget_code"]));

if(empty($forget_code)){
    echo "<script>alert('Input field required!')</script>"; 
    exit();   
}
if(!preg_match('/^[0-9]*$/',$forget_code)){
    echo "<script>alert('Code must be number!')</script>";
    exit();
}

$check_code = mysqli_query($conn, "SELECT * FROM forget_password WHERE code = '$forget_code'");
if(mysqli_num_rows($check_code) < 1){
    echo "<script>alert('Incorrect code try again!')</script>";
    exit();
}

$fetch_detailes = mysqli_fetch_assoc($check_code);
$check_time = $fetch_detailes['time_expired'];
$address = $fetch_detailes['address'];

if(strtotime($check_time) <= time()){
    echo "<script>alert('OTP expired')</script>";
    echo "<script>window.open('forget_password_page.php', '_self')</script>";
    exit();
  }

?>


<div class="divshow">
<div class="divinnershow">  
<div class="insidediv">

<form  method="post" action="" class="form_submit_code">
<button type="submit" name="btn_cancel_forget_password_message" class="btncancel btn_cancel_forget_password_message">
<i class="fa-solid fa-xmark"></i>
</button>
<br><hr>
<div class="div_display_category">

<div class="div_jumbo_newpassword">

    <h1 class="reg_heading">Enter new password</h1>
    <input type="hidden" name="adderss" class="inp_reg_style adderss" value="<?= $address; ?>"><br>
    <input type="password" name="new_password" class="inp_reg_style new_password" placeholder="New password"><br>
    <input type="password" name="confirm_password" class="inp_reg_style confirm_password" placeholder="Confirm new password"><br>
    <button class="btn_reg_submit btn_submit_newpassword">Submit</button>
    
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
<script src="jsfile/newpassword.js"></script>