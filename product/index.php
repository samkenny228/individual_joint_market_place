<?php 
include("header.php");
?>
<div id="reg_p_message"></div>

<div class="container">
<div class="div_jumbo">
<h3 class="reg_heading">Register Product</h3>
<form method="post" action="" id="reg_product_form" enctype="multipart/form-data">
    <input type="text" name="reg_p_name" class="inp_reg_style reg_p_name" placeholder="Enter product name"><br>
    <input type="file" name="reg_p_img" class="inp_reg_style reg_p_img" placeholder="Select produvt image" accept="image/*"><br>
    <textarea type="text" name="reg_p_discription" class="inp_reg_style reg_p_discription" placeholder="Additional information about the product"></textarea><br>
    <select name="reg_p_category" class="inp_reg_style reg_p_category">
        <option value="Other_product">Other product categories</option>
        <option value="Gadgets">Gadgets</option>
        <option value="Mobile_phones">Mobile phone</option>
        <option value="Phone_accessories">Phone accessories</option>
        <option value="Computers">Computer</option>
        <option value="Computer_accessories">Computer accessories</option>
        <option value="Clothing_and_Fashion">Clothing and Fashion</option>
        <option value="Perfume_and_cologne">Perfume and cologne</option>
        <option value="Furniture">Furniture</option>
        <option value="Art_and_crafting_material">Art and crafting material</option>
        <option value="Skin_care">Skin care</option>
        <option value="Car_dealer">Car dealer</option>
        <option value="Poster_and_art_work">Poster and art work</option>
        <option value="Home_appliances">Home appliances</option>
        <option value="Interior_decoration">Interior decoration</option>
        <option value="Electron_appliances">Electronic appliances</option>
        <option value="Kitchen_utensils">Kitchen utensils</option>
        <option value="Wine_merchant">Wine merchant</option>
        <option value="Pharmacy">Pharmacy</option>
        <option value="Food_vendor">Food vendor</option>
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

<?php /* if($current_date >= $premium_expire){ ?>
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
} */ ?>
    
<?php /*if($currency == 'naira'){
echo 'or &#8358; 12,000 yearly';
} ?>
<?php if($currency == 'pound'){
echo 'or &#163;60 yearly';
} ?>
<?php if($currency == 'doller'){
echo 'or &#36;60 yearly';
} */ /*?>
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
<?php } */ ?>

<div class="container">
<?php if($current_date >= $premium_expire){ ?>
<div>
<!-- adds here -->
</div>
<?php } ?>
</div>

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