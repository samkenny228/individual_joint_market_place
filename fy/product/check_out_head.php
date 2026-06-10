<?php
session_start();
include("phpfile/connectdb.php");
if(!isset($_GET['buid'])){
    echo "<script>alert('Incorrect url!')</script>";
    echo "<script>window.open('login.php', '_self')</script>";
    exit();  
}

if(!isset($_GET['pcn'])){
    echo "<script>alert('Incorrect url!')</script>";
    echo "<script>window.open('login.php', '_self')</script>";
    exit();  
}

    $brand_unique_id = htmlentities(mysqli_real_escape_string($conn, $_GET['buid']));
    $product_category_name = htmlentities(mysqli_real_escape_string($conn, $_GET['pcn']));
    
if(!isset($_SESSION["user_order_id"])){
    echo "<script>window.open('order_page.php?buid=$brand_unique_id&pcn=$product_category_name', '_self')</script>";
    exit();  
};


if(isset($_GET['buid'])){
    $select_brand_name = mysqli_query($conn, "SELECT * FROM brand_register  WHERE b_unique_id = '$brand_unique_id'");
    if(mysqli_num_rows($select_brand_name) < 1){
        echo "<script>alert('Incorrect url!')</script>";
        echo "<script>window.open('login.php', '_self')</script>";
        exit();
    }else{
        $fetch_brand_name = mysqli_fetch_assoc($select_brand_name);
        $brand_name = $fetch_brand_name['brand_name'];
        $currency = $fetch_brand_name['currency'];
        $background_color = $fetch_brand_name['background_color'];
        $brand_logo = $fetch_brand_name['brand_logo'];
        $user_order_id = htmlentities(mysqli_real_escape_string($conn, $_SESSION["user_order_id"]));
        $brand_status = $fetch_brand_name['status']; 
    }

}

        $select_user_order_cart = mysqli_query($conn, "SELECT * FROM cart WHERE user_order_id = '$user_order_id' AND brand_unique_id = '$brand_unique_id'");
        $num_user_order_cart = mysqli_num_rows($select_user_order_cart);
        if($num_user_order_cart < 1){
            echo "<script>alert('Kindly add to cart!')</script>";
            echo "<script>window.open('order_page.php?buid=$brand_unique_id&pcn=$product_category_name', '_self')</script>";
            exit();
        }

$select_user_order_cart = mysqli_query($conn, "SELECT * FROM cart WHERE user_order_id = '$user_order_id' AND brand_unique_id = '$brand_unique_id'");
$num_user_order_cart = mysqli_num_rows($select_user_order_cart);
if($num_user_order_cart < 1){
    echo "<script>alert('Copy the correct url!')</script>";
    echo "<script>window.open('login.php', '_self')</script>";
    exit();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="google-adsense-account" content="ca-pub-6385303503211547">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="x-icon" href="../../Kehkehaskimage.PNG">
    <title>KehkehAsk</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="mainstyle.css">
    <script type="text/javascript" src="jquery-3.7.1.js"></script>
    <script src="jsfile/display_p_category.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    </head>
<body  style="background-color: <?= $background_color ?>;">
<h6 class="h1_heading_order_page"  style="background-color: <?= $background_color ?>;">
    <a href="" class="header_home_link"><img src="../../reg_img/<?= $brand_logo ?>" alt="logo" style="width: 35px; height:35px"></a>
    <a href="order_page.php?buid=<?=$brand_unique_id;?>&pcn=<?=$product_category_name;?>" class="link_cart_icon">
        <?= $brand_name;?>
    </a>
    <span class="span_heading">
    <form method="post" action="" class="form_cart">
       <span class="span_icon">
            <a href="cart_page.php?buid=<?=$brand_unique_id;?>&pcn=<?=$product_category_name;?>" class="link_cart_icon">
                <i class="bi bi-cart-dash-fill"></i>
            </a>
        </span>
    </form>
    </span>
</h6>
<div style="margin-bottom:65px;"></div>
<div id="order_message"></div>