<?php 
include("header.php");

if(!isset($_GET['orunid'])){
    echo "<script>alert('Incorrect url!')</script>";
    echo "<script>window.open('index.php', '_self')</script>";
    exit(); 
}

$or_unique_id = htmlentities(mysqli_real_escape_string($conn, $_GET['orunid']));
$select_order = $select_orders = mysqli_query($conn, "select * from orders where brand_unique_id = '$brand_unique_id' and or_id_unique_id = '$or_unique_id'");
if(mysqli_num_rows($select_order) < 1){
    echo "<script>alert('order not available!')</script>";
    echo "<script>window.open('index.php', '_self')</script>";
    exit(); 
}

$fetch_order = mysqli_fetch_assoc($select_order);
$client_items = htmlspecialchars_decode(stripslashes($fetch_order['total_or_items']));
$who_or_name = $fetch_order['who_or_name'];
$who_or_phone_num = $fetch_order['who_or_phone_num'];
$who_or_address = $fetch_order['who_or_address'];
$delivery_or_carryout  = $fetch_order['delivery_or_carryout'];
$total_or_price = number_format($fetch_order['total_or_price']);


?>
<div id="update_or_status_message"></div>

<div class="container">
<div class="div_view_or_page">


<h3 class="h1_orders">Client Detailes</h3>

<h5>Client name: <span class="span_who_or"><?= $who_or_name; ?></span></h5>
<h5>Client phone number: <span class="span_who_or"><?= $who_or_phone_num ; ?></span></h5>
<h5>Client address: <span class="span_who_or"><?= $who_or_address; ?></span></h5>
<h5>Order type: <span class="span_who_or"><?= $delivery_or_carryout; ?></span></h5>
<h5>Total item price: <span class="span_who_or">&#8358;<?= $total_or_price; ?></span></h5>
<hr>

<h3 class="h1_orders">Client Items</h3>

<?= $client_items; ?>
</div>
</div>


<form method="post" action="" class="form_update_or_status">
    <input type="hidden" name="or_unique_id" class="or_unique_id" value="<?= $or_unique_id; ?>">
    <div class="div_or_complete">
        <button type="submit" name="btn_or_complete" class="btn_or_complete">Order complete</button>
    </div>
</form>

<!-- <?php if($current_date >= $premium_expire){ ?>
<div class="container blow_adds_view_or_page">
<div>

</div>
</div>
<?php } ?> -->

<div style="height: 10px;"></div>
<?php 
include("footer.php"); 
?>

<script src="jsfile/update_or_status.js"></script>
</body>
</html>