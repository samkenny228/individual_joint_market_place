<?php
include_once "connectdb.php";
if(isset($_POST['btn_track_order'])){
    $tracking_code = htmlentities(mysqli_real_escape_string($conn, $_POST["tracking_code"]));
    if(empty($tracking_code)){
        echo "<script>alert('Kindly enter your traking code!')</script>"; 
        exit();
    }
    $select_order = mysqli_query($conn, "select * from orders where or_id_unique_id = '$tracking_code'");
    if(mysqli_num_rows($select_order) < 1){
        echo "<script>alert('Kindly enter the correct code!')</script>"; 
        exit();
    }
    $fetch_order_detailes = mysqli_fetch_assoc($select_order);

    $order_status = $fetch_order_detailes['or_status'];
    $order_viewed = $fetch_order_detailes['or_view_or_not'];
?>


<div class="divshow">
<div class="divinnershow">  
<div class="insidediv">

<form  method="post" action="" class="form_submit_code">
<button type="submit" name="btn_cancel_forget_password_message" class="btncancel btn_cancel_forget_password_message">
<i class="fa-solid fa-xmark"></i>
</button>
<br><hr>
<div>

<div class="div_jumbo_newpassword">

<div class="pend_or">Pending order ....</div>
<?php
if($order_viewed == 1){
?>
<div class="view_or">  Order confirmed</div>
<?php
}
if($order_status == 1){
?>
<div class="sent_or">Order completed</div>
<?php
}
?>

</div>

<div>
<!-- adds here -->
</div>
</div>
<br>
<button type="submit" name="btn_cancel_forget_password_message" class="btncancel_text btn_cancel_forget_password_message">
Cancel
</button>
</form>

<br>
</div>
</div>
</div>
<script src="jsfile/track_order.js"></script>

<?php   
}
?>