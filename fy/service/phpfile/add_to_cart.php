<?php
include("connectdb.php");
if(isset($_POST['btn_add_to_cart'])){
    $p_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['p_unique_id']));
    $user_order_id = htmlentities(mysqli_real_escape_string($conn, $_POST['user_order_id']));
    $brand_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['brand_unique_id']));
    
    if(empty($p_unique_id) or empty($user_order_id)or empty($brand_unique_id)){
        echo "<script>alert('Try again!')</script>"; 
        exit();
    }

    $insert_cart = mysqli_query($conn, "INSERT INTO cart(p_unique_id, user_order_id, brand_unique_id)
                                        VALUE('$p_unique_id', '$user_order_id', '$brand_unique_id')");

    
    if($insert_cart){
        $last_id = mysqli_insert_id($conn);
        if($last_id){
            $code = rand(1, 999999);
            $cart_unique_id = $brand_unique_id."_".$last_id.$code;
            $cart_unique_id =  mysqli_query($conn, "UPDATE cart SET cart_unique_id = '$cart_unique_id' WHERE cart_id = '$last_id'");

            if($cart_unique_id){
                $select_num_cart = mysqli_query($conn, "SELECT * FROM cart WHERE user_order_id = '$user_order_id'");
                $fetch_cart_num_row = mysqli_num_rows($select_num_cart);
                if($fetch_cart_num_row > 0){
                    echo $fetch_cart_num_row;
                }
            }
        }
    }

    
}
?>