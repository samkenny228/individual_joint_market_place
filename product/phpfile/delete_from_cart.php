<?php
include("connectdb.php");
if(isset($_POST['btn_delete_from_cart'])){
    $cart_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['cart_unique_id']));
    $user_order_id = htmlentities(mysqli_real_escape_string($conn, $_POST['user_order_id']));
    $brand_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['brand_unique_id']));
    $product_category_name = htmlentities(mysqli_real_escape_string($conn, $_POST['product_category_name']));

    $delete_product = mysqli_query($conn, "DELETE FROM cart WHERE cart_unique_id = '$cart_unique_id'");

if($delete_product){
$select_user_order_cart = mysqli_query($conn, "SELECT * FROM cart WHERE user_order_id = '$user_order_id' AND brand_unique_id = '$brand_unique_id'");
$num_user_order_cart = mysqli_num_rows($select_user_order_cart);
if($num_user_order_cart < 1){
    echo "<script>alert('Kindly add to cart!')</script>";
    echo "<script>window.open('order_page.php?buid=$brand_unique_id&pcn=$product_category_name', '_self')</script>";
    exit();
}
}
?>

<?php
while($fetch_user_order_cart = mysqli_fetch_assoc($select_user_order_cart)){ 
    $p_unique_id = $fetch_user_order_cart['p_unique_id'];
    $cart_unique_id = $fetch_user_order_cart['cart_unique_id'];
    $brand_unique_id = $fetch_user_order_cart['brand_unique_id'];
    $user_order_id = $fetch_user_order_cart['user_order_id'];

    $select_reg_product = mysqli_query($conn, "SELECT * FROM reg_product WHERE p_unique_id = '$p_unique_id'");
    if(mysqli_num_rows($select_reg_product) > 0){
    $fetch_reg_product = mysqli_fetch_assoc($select_reg_product);
    $p_image = $fetch_reg_product['p_image'];
    $reg_p_price = $fetch_reg_product['reg_p_price'];
    $p_discription = $fetch_reg_product['p_discription'];
    $p_name = $fetch_reg_product['p_name'];
    $brand_unique_id = $fetch_reg_product['brand_unique_id'];
    $p_category = $fetch_reg_product['p_category'];
    }
?>

<div class="div_while_pp">
<form method="post" action="" class="form_cart_delete">
    
    <input type="hidden" name="cart_unique_id" class="cart_unique_id" value="<?= $cart_unique_id; ?>">
    <input type="hidden" name="user_order_id" class="user_order_id" value="<?= $user_order_id; ?>">
    <input type="hidden" name="brand_unique_id" class="brand_unique_id" value="<?= $brand_unique_id; ?>">
    <input type="hidden" name="product_category_name" class="product_category_name" value="<?= $p_category; ?>">

<div class="div_while_inner_pp">
<img src="../reg_img/<?=$p_image;?>" class="p_image"><br>
<div class="div_p_details">
<span class="span_p_details">Price: </span>&#8358;<?= number_format($reg_p_price); ?><br>
<span class="span_p_details">Name: </span><?= $p_name; ?><br>
<span class="span_p_details">Discription: </span><?= $p_discription; ?>
</div>
</div>
<div class="div_btn_p">
<button type="submit" name="btn_delete_from_cart" class="btn_delete_from_cart btn_p">Delete</button>
</div>
</form>
</div>

<?php
}
?>

<?php
}
?>
<script src="jsfile/delete_from_cart.js"></script>