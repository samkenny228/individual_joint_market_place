<?php
include("check_out_head.php");
?>

<?php
$order_price = 0;

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

    $order_price += $reg_p_price;
    $total_order_price = $order_price;

    }
    $order_items[] ='<img src="../../reg_img/'.$p_image.'" class="or_image" alt="Product order"><br> PRODUCT: '.$p_name.'<br> PRICE: &#8358;'.number_format($reg_p_price).''.'<br> DICRIPTION: '.$p_discription.''.'<br><hr>';
?>
<?php
}
$total_order_items = implode($order_items);
?>

<div class="container">
<div class="div_jumbo">


<h3 class="reg_heading">Order Now</h3>
<form method="post" action="" id="check_out_form" enctype="multipart/form-data">

    <input type="hidden" name="brand_unique_id" class="brand_unique_id" value="<?= $brand_unique_id; ?>">
    <input type="hidden" name="user_or_id" class="user_or_id" value="<?= $user_order_id; ?>">
    <input type="hidden" name="total_or_items" class="total_or_items" value='<?= $total_order_items; ?>'>
    <input type="hidden" name="total_or_price" class="total_or_price" value="<?= $total_order_price; ?>">
    <input type="hidden" name="product_category_name" class="product_category_name" value="<?= $product_category_name; ?>">

    <input type="text" name="who_or_name" class="inp_reg_style who_or_name" placeholder="Full name"><br>
    <textarea type="text" name="who_or_address" class="inp_reg_style who_or_address" placeholder="Discribe your address"></textarea><br>
    <select name="go_place" class="inp_reg_style go_place">
        <?php 
        $select_b_drop_point = mysqli_query($conn, "SELECT * FROM brand_go_places WHERE brand_unique_id = '$brand_unique_id'");
        if(mysqli_num_rows($select_b_drop_point) > 0){
        while($dorp_point = mysqli_fetch_assoc($select_b_drop_point)){ ?>
            <option value="<?= $dorp_point['unique_go_place_id'] ?>"><?= $dorp_point['go_place'] ?> // &#8358;<?= $dorp_point['go_place_price']; ?></option>
       <?php }
        }else{ ?>
            <option value="0">Universal delivery</option>
      <?php  }
        ?>
    </select><br>
    <select name="delivery_or_carryout" class="inp_reg_style delivery_or_carryout">
        <option value="delivery">Delivery</option>
        <option value="carryout">Carry Out</option>
    </select><br>
    <input type="text" name="who_or_phone_num" class="inp_reg_style who_or_phone_num" placeholder="phone number"><br>
    <button type="submit" name="order_btn" class="btn_reg_submit order_btn">
    <span id="spin_message"></span>    
    Order now</button>
</form>



</div>
</div>

<div style="height: 10px;"></div>

<div>
<!-- adds here -->
</div>

<div style="height: 10px;"></div>
<?php
include("footer.php");
?>
<script src="jsfile/check_out.js"></script>
</body>
</html>