<?php 
include("header.php");
?>
<div id="reg_p_message"></div>

<div class="container">

<div class="div_jumbo">
<h3 class="reg_heading">Register service</h3>
<form method="post" action="" id="reg_product_form" enctype="multipart/form-data">
    <input type="text" name="reg_p_name" class="inp_reg_style reg_p_name" placeholder="Enter service name"><br>
    <input type="file" name="reg_p_img" class="inp_reg_style reg_p_img" placeholder="Select service image" accept="image/*"><br>
    <textarea type="text" name="reg_p_discription" class="inp_reg_style reg_p_discription" placeholder="Additional information about the service"></textarea><br>
    <select name="reg_p_category" class="inp_reg_style reg_p_category">
        <option value="Other_service">Other service</option>
        <option value="Dry_cleaner">Dry cleaner</option>
        <option value="Mechanic">Mechanic</option>
        <option value="Rewire">Rewire</option>
        <option value="Furniture_work">Furniture work</option>
        <option value="Generator_repairer">Generator repairer</option>
        <option value="Phone_repairer">Phone repairer</option>
        <option value="Computer_repairer">Computer repairer</option>
        <option value="Plumber">Plumber</option>
        <option value="Tailor">Tailor</option>
        <option value="Hairstylist">Hairstylist</option>
        <option value="Painter">Painter</option>
      </select><br>
    <input type="text" name="reg_p_price" class="inp_reg_style reg_p_price" placeholder="Enter price"><br>
    <button type="submit" name="reg_btn" class="btn_reg_submit reg_btn">
        <span id="spin_message">
        </span>
        Submit  
    </button>
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

<!-- <?php if($current_date >= $premium_expire){ ?>
<div class="container blow_adds_view_or_page">
<div>
adds here
</div>
</div>
<?php } ?> -->

</div>
<?php } ?>

<?php 
include("phpfile/sub_prem.php");
?>

<div style="height: 10px;"></div>
<?php 
include("footer.php"); 
?>

<script src="jsfile/reg_product.js"></script>
</body>
</html>