<?php 
include("header.php");
include("phpfile/editi_profile.php");
?>


<div id="reg_p_message"></div>
<div class="container">
<div class="div_jumbo_edit_profile">
<h3 class="reg_heading">Edit profile</h3>
<form method="post" action="" enctype="multipart/form-data">
    <input type="text" name="reg_brand_name" class="inp_reg_style reg_brand_name" value="<?= $brand_name; ?>" required><br>
    <input type="email" name="reg_email" class="inp_reg_style reg_email" value="<?= $brand_email; ?>" required><br>
    <?php if($current_date <= $premium_expire){ ?>

    <input type="text" name="phone_number" class="inp_reg_style phone_number" value="<?= $phone_number; ?>" required><br>
    
    <input type="file" name="brand_logo" class="inp_reg_style reg_p_img" placeholder="Select produvt image" accept="image/*"><br>
    
    <input type="text" name="facebooklink" class="inp_reg_style facebooklink" value="<?= $facebooklink; ?>" placeholder="Add a Facebook link" required><br>
    <input type="text" name="whatsapplink" class="inp_reg_style whatsapplink" value="<?= $whatsapplink; ?>" placeholder="Add a Whatsapp link" required><br>
    <input type="text" name="instagramlink" class="inp_reg_style instagramlink" value="<?= $instagramlink; ?>" placeholder="Add a Instagramlink link" required><br>
    <input type="text" name="bank_account_name" class="inp_reg_style bank_account_name" value="<?= $bank_account_name; ?>" required><br>
    <input type="text" name="bank_name" class="inp_reg_style bank_name" value="<?= $bank_name; ?>" required><br>
    <input type="text" name="bank_account_number" class="inp_reg_style bank_account_number" value="<?= $bank_account_number; ?>" required><br>

    <?php } ?>
    <button type="submit" name="update_profile_d" class="btn_reg_submit update_profile_d">Update</button>
</form>
</div>
</div>


<?php if($current_date >= $premium_expire){ ?>
<div class="container">
<div class="div_jumbo_alert">
<h5 class="reg_heading">Subscribe for the premium offer</h5>
<ul style="list-style-type:square;">
  <li>Unlock the ability to edit product details</li>
  <li>Unlock the ability to make product availiable or not availiable</li>
  <li>Unlock the ability to edit account details</li>
  <li>Unlock the ability to edit phone number</li>
  <li>Remove advert</li>
<li>
<?php if($currency == 'naira'){
echo '&#8358;1,000 monthly ';
} ?>
<?php if($currency == 'pound'){
echo '&#163;5 monthly ';
} ?>
<?php if($currency == 'doller'){
echo '&#36;5 monthly ';
} ?>
    
<?php /*if($currency == 'naira'){
echo 'or &#8358; 12,000 yearly';
} ?>
<?php if($currency == 'pound'){
echo 'or &#163;60 yearly';
} ?>
<?php if($currency == 'doller'){
echo 'or &#36;60 yearly';
} */?>
</li>

</ul>

<div class="div_alert_form">
<form method="post" action="" id="paymentForm">
<?php if($currency == 'naira'){
echo 
'<button type="submit" onclick="payWithPaystack()" class="btn_reg_submit ng_pay">subscribe monthly</button>';
} ?>
</form>
<form method="post" action="">
<?php if($currency == 'pound'){
echo
'<button type="submit" name="ng_pay" class="btn_reg_submit ng_pay">subscribe monthly</button>';
} ?>
<?php if($currency == 'doller'){
echo 
'<button type="submit" name="ng_pay" class="btn_reg_submit ng_pay">subscribe monthly</button>';
} ?>
</form>
</div>
</div>
</div>
<?php } ?>

<!--<?php if($current_date >= $premium_expire){ ?>
<div class="container blow_adds_view_or_page">
<div>
adds here
</div>
</div>
<?php } ?> -->


<?php 
include("phpfile/sub_prem.php");
?>
<div style="height: 70px;"></div>

<?php 
include("footer.php"); 
?>
</body>
</html>