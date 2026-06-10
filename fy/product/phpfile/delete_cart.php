<?php
include("connectdb.php");
if(isset($_POST['cancel'])){
    $user_or_id = htmlentities(mysqli_real_escape_string($conn, $_POST['user_or_id']));
    $brand_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['brand_unique_id']));
    $product_category_name = htmlentities(mysqli_real_escape_string($conn, $_POST['product_category_name']));
    $delete_from_cart = mysqli_query($conn, "DELETE FROM cart WHERE user_order_id = '$user_or_id'");

    if($delete_from_cart){
        echo "<script>alert('Kindly add to cart!')</script>";
        echo "<script>window.open('order_page.php?buid=$brand_unique_id&pcn=$product_category_name', '_self')</script>";
        exit();
    }
}


if(isset($_POST['cancel_rateus_message'])){
    $user_or_id = htmlentities(mysqli_real_escape_string($conn, $_POST['user_or_id']));
    $brand_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['brand_unique_id']));
    $product_category_name = htmlentities(mysqli_real_escape_string($conn, $_POST['product_category_name']));
    $delete_from_cart = mysqli_query($conn, "DELETE FROM cart WHERE user_order_id = '$user_or_id'");

    $select_brand = mysqli_query($conn, "select * from brand_register where b_unique_id = '$brand_unique_id'");
    $brand_details = mysqli_fetch_assoc($select_brand);
    $brand_rateus = $brand_details['rateus'] + 1;
    if($delete_from_cart){
    $update_rateus = mysqli_query($conn, "UPDATE brand_register SET rateus = '$brand_rateus' WHERE b_unique_id = '$brand_unique_id'");
    if($update_rateus){
        echo "<script>alert('thanks for rating us!')</script>";
        echo "<script>window.open('order_page.php?buid=$brand_unique_id&pcn=$product_category_name', '_self')</script>";
        exit();
    }
    }

}


?>