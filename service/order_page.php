<?php
include("header_order.php");
$select_pn = mysqli_query($conn, "SELECT * FROM reg_product WHERE p_category = '$product_category_name' AND brand_unique_id = '$brand_unique_id' AND status = '' ORDER by rand() DESC");
$num_select_pn = mysqli_num_rows($select_pn);
if($num_select_pn < 1){ 
    echo "<script>alert('Incorrect url!')</script>";
    echo "<script>window.open('login.php', '_self')</script>";
    exit();
}
?>

<div class="container">



<?php
if(!isset($_POST["btn_searched"])){
while($fetch_pd = mysqli_fetch_assoc($select_pn)){
    $p_name = $fetch_pd['p_name'];
    $p_image = $fetch_pd['p_image'];
    $p_discription = $fetch_pd['p_discription'];
    $p_unique_id = $fetch_pd['p_unique_id'];
    $reg_p_price = $fetch_pd['reg_p_price'];
?>

<div class="div_while_orp">
<form method="post" action="" class="form_add_to_cart">

<input type="hidden" name="p_unique_id" class="p_unique_id" value="<?=$p_unique_id;?>">
<input type="hidden" name="user_order_id" class="user_order_id" value="<?=$user_order_id;?>">
<input type="hidden" name="brand_unique_id" class="brand_unique_id" value="<?=$brand_unique_id;?>">


<div class="div_while_inner_orp">
<img src="../reg_img/<?=$p_image;?>" class="orp_image"><br>
<div class="div_p_details">
<span class="span_p_details">Price: </span>
<?php if($currency == 'naira'){
echo '&#8358;';
} ?>
<?php if($currency == 'pound'){
echo '&#163;';
} ?>
<?php if($currency == 'doller'){
echo '&#36;';
} ?>
<?= number_format($reg_p_price); ?><br>
<span class="span_p_details">Name: </span><?= $p_name; ?><br>
<span class="span_p_details">Discription: </span><?= $p_discription; ?>
</div>
</div>

<div class="div_btn_p ">
<button type="submit" name="btn_add_to_cart" class="btn_p btn_add_to_cart">Add to cart</button>
</div>

</form>
</div>


<?php
}
}elseif(isset($_POST["btn_searched"])){
     $p_unique_id = $_POST["p_unique_id"];
$select_pn = mysqli_query($conn, "SELECT * FROM reg_product WHERE p_unique_id  = '$p_unique_id'");
$num_select_pn = mysqli_num_rows($select_pn);
if($num_select_pn < 1){ 
    echo "<script>alert('Incorrect url!')</script>";
    echo "<script>window.open('login.php', '_self')</script>";
    exit();
} 

while($fetch_pd = mysqli_fetch_assoc($select_pn)){
     $p_name = $fetch_pd['p_name'];
     $p_image = $fetch_pd['p_image'];
     $p_discription = $fetch_pd['p_discription'];
     $p_unique_id = $fetch_pd['p_unique_id'];
     $reg_p_price = $fetch_pd['reg_p_price'];

?>


<div class="div_while_orp">
<form method="post" action="" class="form_add_to_cart" >

<input type="hidden" name="p_unique_id" class="p_unique_id" value="<?=$p_unique_id;?>">
<input type="hidden" name="user_order_id" class="user_order_id" value="<?=$user_order_id;?>">
<input type="hidden" name="brand_unique_id" class="brand_unique_id" value="<?=$brand_unique_id;?>">

<div class="div_while_inner_pp">
<img src="../reg_img/<?=$p_image;?>" class="p_image"><br>
<div class="div_p_details">
<span class="span_p_details">Price: </span>
<?php if($currency == 'naira'){
echo '&#8358;';
} ?>
<?php if($currency == 'pound'){
echo '&#163;';
} ?>
<?php if($currency == 'doller'){
echo '&#36;';
} ?>
<?= number_format($reg_p_price); ?><br>
<span class="span_p_details">Name: </span><?= $p_name; ?><br>
<span class="span_p_details">Discription: </span><?= $p_discription; ?>
</div>
</div>

<div class="div_btn_p ">
<button type="submit" name="btn_add_to_cart" class="btn_p btn_add_to_cart">Add to cart</button>
</div>

</form>
</div>


<?php
}
}
?>


<div>
<!-- adds here -->
</div>

<div style="height: 10px;"></div>

</div>

<?php
include("footer.php");
?>
<script src="jsfile/add_to_cart.js"></script>
</body>
</html>