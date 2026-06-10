<?php
include_once "check_session.php";
if(isset($_POST['btn_display_orders'])){


$update_or_view_or_not = mysqli_query($conn, "UPDATE orders SET or_view_or_not = 1 WHERE brand_unique_id ='$brand_unique_id'");
    
?>
<div class="divshow">
<div class="divinnershow">  
<div class="insidediv">

<button type="submit" name="cancel" class="btncancel cancel">
<i class="bi bi-x-circle-fill"></i>
</button>
<br><hr>
<div class="div_display_orders">
<h4>View orders</h4><hr> 

<?php
while($order_detailes = mysqli_fetch_assoc($select_orders)){
    $or_id_unique_id = $order_detailes['or_id_unique_id'];
    $who_or_name  = $order_detailes['who_or_name'];
    $or_status  = $order_detailes['or_status'];
?> 

<div class="div_inside_display_orders">
    <a href="view_order_page.php?orunid=<?= $or_id_unique_id; ?>" class="link_display_category"><?= $who_or_name; ?></a>
    <?php if($or_status == 1){ ?>
    <span class="span_mark_orders">
        <i class="bi bi-check2-all"></i>
    </span>
    <?php } ?>
</div>

<?php
}
?>

</div>
<br>
<button type="submit" name="cancel" class="btncancel_text cancel">
Cancel
</button><br>

</div>
</div>
</div>

<?php
}
?>
<script src="jsfile/cancel_displays.js"></script>