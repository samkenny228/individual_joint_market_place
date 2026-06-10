<?php 
session_start();
include("connectdb.php");

$fy_unique_id = "fy_37416_mem";

if(!isset($_SESSION["user_name"]) or !isset($_SESSION["unique_sess"]) or $_SESSION["unique_sess"] !== "$fy_unique_id"){
    echo "<script>window.open('index.php', '_self')</script>";
}

$select_code = mysqli_query($conn, "SELECT * FROM fy_member WHERE fy_unique_id = '$fy_unique_id'");
$fetch_code = mysqli_fetch_assoc($select_code);
$code = $fetch_code["last_code"];

if(isset($_POST['logout'])){
    $update_or_status = mysqli_query($conn, "UPDATE brand_register SET status = 'offline' WHERE b_unique_id  ='$brand_unique_id'");
    session_destroy();
    header('location: index.php');
  }
?>