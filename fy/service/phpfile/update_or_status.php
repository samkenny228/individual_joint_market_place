<?php
include("connectdb.php");
if(isset($_POST['btn_or_complete'])){
$or_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['or_unique_id']));


$update_or_status = mysqli_query($conn, "UPDATE orders SET or_status = 1 WHERE or_id_unique_id  ='$or_unique_id'");

if($update_or_status){
    echo "<script>alert('Order has been marked complete!')</script>";
    exit();
}
}
?>