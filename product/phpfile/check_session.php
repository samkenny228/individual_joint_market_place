<?php 
session_start();
include("connectdb.php");

if(!isset($_SESSION["brand_email"]) and !isset($_SESSION["brand_unique_id"])){
    header("location: login.php");
    exit();
};

$brand_email = htmlentities(mysqli_real_escape_string($conn, $_SESSION["brand_email"])); 
$brand_unique_id = htmlentities(mysqli_real_escape_string($conn, $_SESSION["brand_unique_id"]));

$fetch_brand_user = mysqli_query($conn, "select * from brand_register where email = '$brand_email ' and b_unique_id = '$brand_unique_id'");
$check_brand_user = mysqli_num_rows($fetch_brand_user);
if($check_brand_user == 0){
    echo "<script>alert('Kindly login')</script>";
    echo "<script>window.open('login.php', '_self')</script>";
    exit();
  }
  
$brand_details = mysqli_fetch_assoc($fetch_brand_user);
$brand_name = $brand_details['brand_name'];
$brand_unique_id = $brand_details['b_unique_id'];
$premium = $brand_details['premium'];
$premium_expire = $brand_details['premium_expire'];
$bank_name = $brand_details['bank_name'];
$bank_account_name = $brand_details['bank_account_name'];
$bank_account_number = $brand_details['bank_account_number'];
$phone_number = $brand_details['phone_number'];
$instagramlink = $brand_details['instagramlink'];
$facebooklink = $brand_details['facebooklink'];
$whatsapplink = $brand_details['whatsapplink'];
$currency = $brand_details['currency'];
$bio = $brand_details['bio'];
$location = $brand_details['location'];
$num_rateus = $brand_details['rateus'];
$new_chat = $brand_details['new_chat'];
$member = $brand_details['member'];
$background_color = $brand_details['background_color'];

if($member == "FY_001_MEM"){
  echo "<script>window.open('https://kehkehask.com/fy/product/index.php', '_self')</script>";
  exit();
}

$Other_product = $brand_details['Other_product'];
$Gadgets = $brand_details['Gadgets'];
$Mobile_phones = $brand_details['Mobile_phones'];
$Phone_accessories = $brand_details['Phone_accessories'];
$Computers = $brand_details['Computers'];
$Computer_accessories = $brand_details['Computer_accessories'];
$Clothing_and_Fashion = $brand_details['Clothing_and_Fashion'];
$Perfume_and_cologne = $brand_details['Perfume_and_cologne'];
$Furniture = $brand_details['Furniture'];
$Art_and_crafting_material = $brand_details['Art_and_crafting_material'];
$Skin_care = $brand_details['Skin_care'];
$Car_dealer = $brand_details['Car_dealer'];
$Poster_and_art_work = $brand_details['Poster_and_art_work'];
$Home_appliances = $brand_details['Home_appliances'];
$Interior_decoration = $brand_details['Interior_decoration'];
$Electron_appliances = $brand_details['Electron_appliances'];
$Kitchen_utensils = $brand_details['Kitchen_utensils'];
$Wine_merchant  = $brand_details['Wine_merchant'];
$Pharmacy  = $brand_details['Pharmacy'];
$Food_vendor  = $brand_details['Food_vendor'];

$select_orders = mysqli_query($conn, "select * from orders where brand_unique_id = '$brand_unique_id' ORDER by 1 DESC");
$select_goplaces = mysqli_query($conn, "select * from brand_go_places where brand_unique_id = '$brand_unique_id' ORDER by 1 DESC");

  if(isset($_POST['logout'])){
    $update_or_status = mysqli_query($conn, "UPDATE brand_register SET status = 'offline' WHERE b_unique_id  ='$brand_unique_id'");
    session_destroy();
    header('location: login.php');
  }

$date = date('Y-m-d');
$current_date = strtotime($date);


$todays_date = date('Y-m-d');
$i = '30';
$exd = date('Y-m-d', strtotime(date('Y-m-d', strtotime($todays_date)).'+'.$i.'days'));
$prem_expd = strtotime($exd);

$SecretKey = "sk_live_29ddcfe7ddee37f38832cfa35b9fba08e10ab3a5"; // Add your secret key here. Remember to change this to your live secret key in production    sk_test_b49396e16761917ee8f09ee893a4e9232ee253c3
$PublicKey = "pk_live_8472362756d6d5b357d2b33dd559bf209b3b03a6"; // Add your public key here. Remember to change this to your live public key in production    pk_test_f9e184c3c066298ec9cf2ed4ae55bee704edf185


if($member == 'FY_001_MEM'){
    $add_to_p_link = '/fy';
}else{
    $add_to_p_link = '';
}


?>