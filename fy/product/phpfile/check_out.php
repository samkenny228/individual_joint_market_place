<?php
include("connectdb.php");
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;


if(isset($_POST['who_or_name'])){
    $brand_unique_id = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['brand_unique_id'])));
    $user_or_id = htmlentities(mysqli_real_escape_string($conn, $_POST['user_or_id']));
    $total_or_items = htmlentities(mysqli_real_escape_string($conn, $_POST['total_or_items']));
    $total_or_price = htmlentities(mysqli_real_escape_string($conn, $_POST['total_or_price']));
    $who_or_name = htmlentities(mysqli_real_escape_string($conn, $_POST['who_or_name']));
    $who_or_address = htmlentities(mysqli_real_escape_string($conn, $_POST['who_or_address']));
    $delivery_or_carryout = htmlentities(mysqli_real_escape_string($conn, $_POST['delivery_or_carryout']));
    $who_or_phone_num = htmlentities(mysqli_real_escape_string($conn, $_POST['who_or_phone_num']));
    $product_category_name = htmlentities(mysqli_real_escape_string($conn, $_POST['product_category_name']));
    $go_place = htmlentities(mysqli_real_escape_string($conn, $_POST['go_place']));

    $select_from_b_go_places = mysqli_query($conn, "SELECT * FROM brand_go_places WHERE unique_go_place_id = '$go_place'");
    if(mysqli_num_rows($select_from_b_go_places) > 0){
       $go_place_detailes = mysqli_fetch_assoc($select_from_b_go_places);
       $go_place_name = $go_place_detailes['go_place'];
       $go_place_price = $go_place_detailes['go_place_price'];
       $goplace_price = $go_place_name ." // Price: ". $go_place_price;

       $item_plus_goplace = $total_or_price + $go_place_price;

    }else{
        $item_plus_goplace = $total_or_price;
    }

    if(empty($brand_unique_id) or empty($user_or_id) or empty($total_or_items)
             or empty($total_or_price) or empty($who_or_name) or empty($who_or_address) 
             or empty($delivery_or_carryout) or empty($who_or_phone_num)){
        echo "<script>alert('All input field are required!')</script>"; 
        exit();
    }
    if(!preg_match('/^[0-9]*$/',$who_or_phone_num)){
        echo "<script>alert('Phone number is not valid!')</script>";
        exit();
    }

    $save_order_detailes =  mysqli_query($conn, "insert into orders(who_or_name, who_or_address, who_or_phone_num, brand_unique_id,
                                                 user_or_id, total_or_items, total_or_price, delivery_or_carryout, goplace_price)
                                                 values('$who_or_name', '$who_or_address', '$who_or_phone_num', '$brand_unique_id',
                                                 '$user_or_id', '$total_or_items', '$item_plus_goplace', '$delivery_or_carryout', '$goplace_price')");

    if($save_order_detailes){
        $last_id = mysqli_insert_id($conn);
        if($last_id){
            $code = rand(1, 9999);
            $time = time();
            $or_id_unique_id = $delivery_or_carryout."_".$code.$last_id.$time;
            $update_or_id_unique_id = mysqli_query($conn, "UPDATE orders SET or_id_unique_id = '$or_id_unique_id' WHERE or_id = '$last_id'");
        }
        if($update_or_id_unique_id){ 
            $select_brand_detailes = mysqli_query($conn, "SELECT * FROM brand_register WHERE b_unique_id = '$brand_unique_id'");
            $fetch_brand_detailes = mysqli_fetch_assoc($select_brand_detailes);

            $brand_account_number = $fetch_brand_detailes['bank_account_number'];
            $brand_bank_name = $fetch_brand_detailes['bank_name'];
            $brand_account_name = $fetch_brand_detailes['bank_account_name'];
            $brand_phone_number = $fetch_brand_detailes['phone_number'];
            $instagramlink = $fetch_brand_detailes['instagramlink'];
            $facebooklink = $fetch_brand_detailes['facebooklink'];
            $whatsapplink = $fetch_brand_detailes['whatsapplink'];
            $premium_expire = $fetch_brand_detailes['premium_expire'];
            $date = date('Y-m-d');
            $current_date = strtotime($date);
            $brand_email = $fetch_brand_detailes['email'];      
            $currency = $fetch_brand_detailes['currency'];
            $background_color = $fetch_brand_detailes['background_color'];
            
            
            $rand_num = rand(1, 9999);
            $code = $rand_num;
            $message_to_email = "New order form kehkehask.com".""."<br>";

            require '../phpmailer/src/Exception.php';
            require '../phpmailer/src/PHPMailer.php';
            require '../phpmailer/src/SMTP.php';
            
            $mail = new PHPMailer(true);
            
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'kehkehask@gmail.com';
            $mail->Password = 'pyoa lzux chaa icev';
            $mail->SMTPSecure = 'ssl';
            $mail->Port = 465;
            
            $mail->setFrom('kehkehask@gmail.com');
            
            $mail->addAddress($brand_email);
            
            $mail->isHTML(true);
            
            $mail->Subject = 'New order form KehkehAsk';
            $mail->Body = $message_to_email;
            
            $mail->send();

            if(!$mail){
                echo "<script>alert('Somthing went wrong try again!')</script>"; 
                exit();
            }

        ?>
<div class="divshow">
<div class="divinnershow">  
<div class="insidediv" style="background-color:<?= $background_color; ?>">

<form class="form_cancel_or">
    <input type="hidden" name="user_or_id" class="user_or_id" value="<?= $user_or_id; ?>">
    <input type="hidden" name="brand_unique_id" class="brand_unique_id" value="<?= $brand_unique_id; ?>">
    <input type="hidden" name="product_category_name" class="product_category_name" value="<?= $product_category_name; ?>">

<button type="submit" name="cancel_rateus_message" class="btncancel_text cancel_rateus_message">
     Give us a rate<i class="bi bi-lightning-fill"></i>
    </button>
<br><hr>
<div class="div_display_category">
<div class="div_bank_detailes">
    <p>
    Total Price:
<?php if($currency == 'naira'){
echo '&#8358;';
} ?>
<?php if($currency == 'pound'){
echo '&#163;';
} ?>
<?php if($currency == 'doller'){
echo '&#36;';
} ?>
<?= number_format($item_plus_goplace); ?><br>
    </p>
    <h6>Brand phone number: <br><span class="span_bank_detailes"><?= $brand_phone_number; ?></span></h6>
    <h6>Bank account name: <br><span class="span_bank_detailes"><?= $brand_account_name; ?></span></h6>
    <h6>Bank name: <br><span class="span_bank_detailes"><?= $brand_bank_name; ?></span></h6>
    <h6>Bank account number: <br><span class="span_bank_detailes"><?= $brand_account_number; ?></span></h6>
    <?php if($current_date <= $premium_expire){ ?>
    <h6>
        <span class="span_bank_detailes"><a href="<?= $facebooklink ?>" target="_blank"><img src="img/facebook.png" class="img_social"></a></span> 
        <span class="span_bank_detailes"><a href="<?= $instagramlink ?>" target="_blank"><img src="img/ig.png" class="img_social"></a></span>
        <span class="span_bank_detailes"><a href="https://<?= $whatsapplink ?>" target="_blank"><img src="img/whatsapp.png" class="img_social"></a></span>
    </h6>
    <?php } ?>
    <h6><span class="span_bank_detailes"><input type="text" id="myInput" value="<?= $or_id_unique_id; ?>" style="background-color:<?= $background_color; ?>">  
    <button type="button" class="btn_copy_p_c" onclick="myFunction()"><i class="bi bi-check2-square"></i></button>
    </span></h6>
    <h6><span class="span_bank_detailes"><a href="tracking_page.php" class="log_link" target="_blank">Click here to track your order </a></span></h6>
    
    <br>
</div>

</div>
<br>
<button type="submit" name="cancel_order_message" class="btncancel_text cancel_order_message">
Payment sent
</button><br>
</form>

</div>
</div>
</div>
<?php  
}
}
}
?>
<script src="jsfile/copy_p_cp.js"></script>
<script src="jsfile/cancel_displays.js"></script>