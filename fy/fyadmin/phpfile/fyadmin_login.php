<?php
session_start();
include_once "connectdb.php";
if(isset($_POST["user_name"])){
    $user_name = htmlentities(mysqli_real_escape_string($conn, $_POST['user_name']));
    $password = htmlentities(mysqli_real_escape_string($conn, $_POST['login_password']));

    if(empty($_POST['user_name']) or empty($_POST['login_password'])){
        echo "<script>alert('All input field are required!')</script>"; 
        exit();
    }

    $real_un = "FyAdmin00213";
    $real_p = "Fy00312";

    if($user_name !==  $real_un or $real_p !== $password){
        echo "<script>alert('Incorrect username or password!')</script>"; 
        exit();
    }

    $unique_sess = 'fy_37416_mem';
    $_SESSION["user_name"] = $user_name; 
    $_SESSION["unique_sess"] = $unique_sess;
    echo "<script>window.open('main.php', '_self')</script>";
}
?>