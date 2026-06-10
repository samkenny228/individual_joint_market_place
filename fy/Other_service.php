<?php 
include("category_head.php");

$select_pn = mysqli_query($conn, "SELECT * FROM reg_product WHERE p_category = 'Other_service' AND status = '' AND member = 'FY_001_MEM' ORDER by rand() DESC");
$num_select_pn = mysqli_num_rows($select_pn);
if($num_select_pn < 1){ 
    echo "<script>alert('Other_product product not avaliabe yet!')</script>";
    echo "<script>window.open('index.php', '_self')</script>";
    exit();
}
?>
<div class="container">
<?php
while($fetch_pd = mysqli_fetch_assoc($select_pn)){
    $p_name = $fetch_pd['p_name'];
    $p_image = $fetch_pd['p_image'];
    $p_discription = $fetch_pd['p_discription'];
    $p_unique_id = $fetch_pd['p_unique_id'];
    $reg_p_price = $fetch_pd['reg_p_price'];
    $brand_unique_id = $fetch_pd['brand_unique_id'];

    $fetch_brand_user = mysqli_query($conn, "select * from brand_register where b_unique_id = '$brand_unique_id'");
    $brand_details = mysqli_fetch_assoc($fetch_brand_user);
    $currency = $brand_details['currency'];
?>

<div class="div_while_orp">
<form method="post" action="" class="form_add_to_cart">

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

<div class="div_link_p ">
<a href="product/order_page.php?buid=<?= $brand_unique_id ?>&pcn=Other_service" class="link_p" target="_blank">Order now</a>
</div>
</div>

</form>
</div>


<?php
}
?>
</div>

<div style="height: 50px;"></div>

</div>

<?php
include("footer.php");
?>
</body>
</html>