<?php
include_once "phpfile/check_session.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="google-adsense-account" content="ca-pub-6385303503211547">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="x-icon" href="../../Kehkehaskimage.PNG">
    <title>kehkehask</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="mainstyle.css">
    <script src="https://kit.fontawesome.com/f1e65f5572.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="jquery-3.7.1.js"></script>
    <script src="jsfile/display_p_category.js"></script>
    <script src="jsfile/desplay_orders.js"></script>
    <script src="jsfile/fetch_num_of_or.js"></script>
    <script src="jsfile/fetch_num_of_or.js"></script>
    <script src="jsfile/bio_add.js"></script>
    <script src="jsfile/add_location.js"></script>
    <script src="jsfile/new_chat.js"></script>
    <script src="jsfile/background_color.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <script src="https://js.paystack.co/v1/inline.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    </head>
<body>

<div id="display_p_category"></div>
<h5 class="h1_heading">
    <a href="index.php" class="header_home_link"><img src="../../Kehkehaskimage.PNG" alt="" style="width: 35px; height:35px"></a>
    <a href="edit_profile.php" class="link_brand_name"><?= $brand_name ?></a>
    <span class="span_heading">   
    <form method="post" action="" class="form_dispay">
        <span class="span_icon">
                   <button type="button" class="dropdown-toggle dropdown-toggle-split drop_d" data-toggle="dropdown">
    </button><span class="new_chat"></span>
    <div class="dropdown-menu">
        <button type="submit" name="btn_display_p_category" class="btn_display_p_category">
        <i class="bi bi-eye"></i> Categories
        </button>
        <hr>
        <button type="submit" name="bio_add" class="bio_add drop_d">
        <i class="bi bi-file-earmark-person-fill"></i> BIO
        </button>
        <hr>
        <button type="submit" name="add_location" class="add_location drop_d">
        <i class="bi bi-geo"></i> Add Map
        </button>
        <hr>
        <button type="submit" name="logout" class="btn_logout">
        <i class="bi bi-door-open"></i> Logout
        </button>
        <hr>
        <button type="submit" name="background_color" class="btn_logout background_color">
        <i class="bi bi-palette-fill"></i> Background
        </button>
        <hr>
        <div style="padding-left:5px;">
        <i class="bi bi-geo-alt"></i> <a href="go_place.php" class="link_drop_p"> Add Drop-point</a>
        </div>
        <hr>
        <div style="padding-left:5px;">
        <i class="bi bi-chat-square-text-fill"></i><a href="chat_history.php" class="link_drop_p"> Chat</a>
        <span class="new_chat"></span>
        </div>
        <hr>
        <div style="padding-left:5px;">
       <i class="bi bi-lightning-fill"></i> Rating  <sup> <?=$num_rateus;?></sup>
        </div>
    </div>
        </span>
        <span class="span_icon">
        <button type="submit" name="btn_display_orders" class="btn_display_orders">
            <i class="bi bi-bell-fill"></i>
            <sup class="num_of_or"></sup>
        </button>
        </span>

    </form>
    </span>
</h5>
<div style="margin-bottom:65px;"></div>