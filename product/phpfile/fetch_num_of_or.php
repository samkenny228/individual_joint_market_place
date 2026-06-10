<?php
include_once "check_session.php";
?>
<?php
$select_orders_num = mysqli_query($conn, "select * from orders where brand_unique_id = '$brand_unique_id' and or_view_or_not = '' ");
$num_of_order = mysqli_num_rows($select_orders_num);
echo $num_of_order;
?>