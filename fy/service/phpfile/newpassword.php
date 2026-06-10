<?php
include_once "connectdb.php";
$btn_submit_newpassword = htmlentities(mysqli_real_escape_string($conn, $_POST['btn_submit_newpassword']));
$adderss = htmlentities(mysqli_real_escape_string($conn, $_POST['adderss']));
$new_password = htmlentities(mysqli_real_escape_string($conn, $_POST['new_password']));
$confirm_password = htmlentities(mysqli_real_escape_string($conn, $_POST['confirm_password']));

if(empty($adderss) or empty($new_password) or empty($new_password)){
    echo "<script>alert('All input field are required!')</script>"; 
    exit();
}

$select_reg_brand_email = mysqli_query($conn, "SELECT * FROM brand_register WHERE email = '$adderss'");
if(mysqli_num_rows($select_reg_brand_email) < 1){
    echo "<script>alert('Email address dose not exist!')</script>"; 
    exit();
}

if($new_password != $confirm_password){
    echo "<script>alert('Password dose not match!')</script>"; 
    exit();
}

$update_password = mysqli_query($conn, "UPDATE brand_register SET password = '$confirm_password' WHERE email ='$adderss'");
if($update_password){
    echo "<script>alert('password rest successfull')</script>";
    echo "<script>window.open('login.php', '_self')</script>";
exit();
}
?>