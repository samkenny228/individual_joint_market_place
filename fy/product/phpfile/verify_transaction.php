<?php
include_once "check_session.php";
if (isset($_GET['reference'])) {
  $referenceId = htmlentities(mysqli_real_escape_string($conn, $_GET['reference']));
  if ($referenceId == '') {
    header("Location: ../index");
  } else {
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => "https://api.paystack.co/transaction/verify/$referenceId",
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "GET",
      CURLOPT_HTTPHEADER => array(
        "Authorization: Bearer $SecretKey",
        "Cache-Control: no-cache",
      ),
    ));

    $response = curl_exec($curl);
    $err = curl_error($curl);

    curl_close($curl);

    if ($err) {
      echo "cURL Error #:" . $err;
    } else {
      $data = json_decode($response);
      if ($data->status == true) {

        $monthly = "monthly";
        $update_brand_prem = mysqli_query($conn, "UPDATE brand_register SET premium_expire = '$prem_expd', premium = 1 WHERE b_unique_id ='$brand_unique_id'");
        if($update_brand_prem){
          $save_ref_detailes = mysqli_query($conn, "INSERT INTO premium_users(beand_unique_id, premium_expire, monthly_or_yearly, reference)
                                                                        VALUE('$brand_unique_id', '$prem_expd', '$monthly', '$referenceId')");
          if($save_ref_detailes){
            $last_id = mysqli_insert_id($conn);
            if($last_id){
            $code = rand(1, 9999);
            $prem_us_unique_id = "premium_".$code."".$last_id."_package";
            $update_brand_unique_id = mysqli_query($conn, "UPDATE premium_users SET prem_us_unique_id = '$prem_us_unique_id' WHERE premium_users_id = '$last_id'");

            if($update_brand_unique_id){
              echo "<script>alert('Premium packages unlock')</script>";
              echo "<script>window.open('../index.php', '_self')</script>";
            }
            }
          }
        }
      } else {
        echo "<script>alert('something went wrong try again later')</script>";
        echo "<script>window.open('../index.php', '_self')</script>";
      }
      
    }
  }

  
} else {
  header("Location: index.php");
}
