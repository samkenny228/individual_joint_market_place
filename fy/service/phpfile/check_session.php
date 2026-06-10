<?php 
session_start();
include("connectdb.php");

if(!isset($_SESSION["brand_email"]) and !isset($_SESSION["brand_unique_id"])){
    header("location: login.php");
    exit();
};

$brand_email = $_SESSION["brand_email"]; 
$brand_unique_id = $_SESSION["brand_unique_id"];

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

if($member !== "FY_001_MEM"){
  echo "<script>window.open('https://kehkehask.com/service/index.php', '_self')</script>";
  exit();
}

$Other_service = $brand_details['Other_service'];
$Dry_cleaner = $brand_details['Dry_cleaner'];
$Mechanic = $brand_details['Mechanic'];
$Rewire = $brand_details['Rewire'];
$Furniture_work = $brand_details['Furniture_work'];
$Generator_repairer = $brand_details['Generator_repairer'];
$Phone_repairer = $brand_details['Phone_repairer'];
$Computer_repairer = $brand_details['Computer_repairer'];
$Plumber = $brand_details['Plumber'];
$Tailor = $brand_details['Tailor'];
$Hairstylist = $brand_details['Hairstylist'];
$Painter = $brand_details['Painter'];

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

$SecretKey = "sk_live_29ddcfe7ddee37f38832cfa35b9fba08e10ab3a5"; // Add your secret key here. Remember to change this to your live secret key in production
$PublicKey = "pk_live_8472362756d6d5b357d2b33dd559bf209b3b03a6"; // Add your public key here. Remember to change this to your live public key in production

?>