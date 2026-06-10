<?php 
session_start();
include_once "connectdb.php";
if(isset($_POST['login_email'])){
    $brand_email = htmlentities(mysqli_real_escape_string($conn, $_POST['login_email']));
    $password = htmlentities(mysqli_real_escape_string($conn, $_POST['login_password']));

    if(empty($brand_email) or empty($password)){
        echo "<script>alert('All input field are required!')</script>"; 
        exit();
    }

    $select_reg_brand_email = mysqli_query($conn, "SELECT * FROM brand_register WHERE email = '$brand_email' AND password = '$password'");
    if(mysqli_num_rows($select_reg_brand_email) < 1){
        echo "<script>alert('Incorrect email or password!')</script>"; 
        exit();
    }
    if(mysqli_num_rows($select_reg_brand_email) > 0){
       $fetch_brand = mysqli_fetch_assoc($select_reg_brand_email);
       $brand_unique_id = $fetch_brand['b_unique_id'];

       $_SESSION["brand_email"] = $brand_email; 
       $_SESSION["brand_unique_id"] = $brand_unique_id;
       echo "<script>window.open('index.php', '_self')</script>";
       exit();
    }
}
?>