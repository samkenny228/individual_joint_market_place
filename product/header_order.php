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
if(isset($_GET['buid'])){
    $brand_unique_id = htmlentities(mysqli_real_escape_string($conn, $_GET['buid']));
    $product_category_name = htmlentities(mysqli_real_escape_string($conn, $_GET['pcn']));
    $select_brand_name = mysqli_query($conn, "SELECT * FROM brand_register  WHERE b_unique_id = '$brand_unique_id'");
    if(mysqli_num_rows($select_brand_name) < 1){
        echo "<script>alert('Incorrect url!')</script>";
        echo "<script>window.open('login.php', '_self')</script>";
        exit();
    }else{
        $fetch_brand_name = mysqli_fetch_assoc($select_brand_name);
        $brand_name = $fetch_brand_name['brand_name'];
        $currency = $fetch_brand_name['currency'];
        $num_rateus = $fetch_brand_name['rateus'];
        //$member = $fetch_brand_name['member'];
        $whatsapplink = $fetch_brand_name['whatsapplink'];
        $background_color = $fetch_brand_name['background_color'];
        $brand_logo = $fetch_brand_name['brand_logo'];

        if(!isset($_SESSION["user_order_id"])){
            $rand_session = rand(1, 999999);
            $time = time();
            $w_save_session = $time.$brand_unique_id.$rand_session;
            $_SESSION["user_order_id"] = $w_save_session;
            $_SESSION["brand_unique_id"] = $brand_unique_id;
        };
        $user_order_id = $_SESSION["user_order_id"];
    }
}
$select_num_cart = mysqli_query($conn, "SELECT * FROM cart WHERE user_order_id = '$user_order_id' AND brand_unique_id = '$brand_unique_id'");
$fetch_cart_num_row = mysqli_num_rows($select_num_cart);
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
    <script src="jsfile/display_bio.js"></script>
    <script src="jsfile/display_map.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <script type="text/javascript" src="jsfile/search_p_or.js"></script> 
    </head>
<body style="background-color: <?= $background_color ?>;"> 
<h6 class="h1_heading_order_page" style="background-color: <?= $background_color ?>;">
    <a href="" class="header_home_link"><img src="../../reg_img/<?= $brand_logo ?>" alt="logo" style="width: 35px; height:35px"></a>
    <a href="" class="link_brand_name"><?= $brand_name;?></a>
    <span class="span_heading">
    <form method="post" action="" class="form_cart">
        <input type="hidden" name="brand_unique_id" class="brand_unique_id" value="<?= $brand_unique_id ?>">
        
        <span class="span_icon">
        <button type="button" class="dropdown-toggle dropdown-toggle-split drop_d" data-toggle="dropdown">
    </button>
    <div class="dropdown-menu">
        <button type="submit" name="btn_display_bio" class="btn_display_bio drop_d">
       <i class="bi bi-file-earmark-person-fill"></i> BIO
        </button>
        <hr>
        <button type="submit" name="btn_display_map" class="btn_display_map drop_d">
        <i class="bi bi-geo"></i> Map
        </button>
        <hr>
        <a style="margin-left:8px;" href="https://<?= $whatsapplink ?>" target="_blank" class="link_cart_icon">
        <i class="bi bi-whatsapp"></i> WhatsApp
        </a>
        <hr>
        <div style="padding-left:5px;">
       <i class="bi bi-lightning-fill"></i> B-Rating  <sup> <?= $num_rateus; ?></sup>
        </div>
    </div>
        </span>
        <span class="span_icon">
            <a href="cart_page.php?buid=<?=$brand_unique_id;?>&pcn=<?=$product_category_name;?>" class="link_cart_icon">
                 <i class="bi bi-cart-dash-fill"></i>
            </a>
            <sup id="span_num_cart"><?= $fetch_cart_num_row; ?></sup>
        </span>
    </form>
    </span>
</h6>
<div id="check_num_cart_message"></div>
<div style="margin-bottom:60px;"></div>

<div class="container">
<div class="div_jumbo_search" style="background-color: white;">
            <input type="text" name="inp_search" class="inp_search" placeholder="Search product" style="background-color: <?= $background_color ?>;">
            <button class="btn_search btn_track_order"><i class="bi bi-search"></i></button>
        <div class="div_search_message">

        </div>
</div>
</div>

<div style="margin-bottom:20px;"></div>