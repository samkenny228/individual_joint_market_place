<?php
include_once "check_session.php";
?>
<script src="jsfile/cancel_displays.js"></script>
<?php
if(isset($_POST['btn_display_p_category'])){ ?>


<div class="divshow">
<div class="divinnershow">
<div class="insidediv">

<button type="submit" name="cancel" class="btncancel cancel">
<i class="bi bi-x-circle-fill"></i>
</button>
<br><hr>
<div class="div_display_category">
<h4>Product Categories</h4><hr> 


<?php 
if($Other_product != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Other_product ?>" class="link_display_category">Other product</a>
</div>
<?php 
}
?>

<?php 
if($Gadgets != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Gadgets ?>" class="link_display_category">Gadgets</a>
</div>
<?php 
}
?>

<?php 
if($Mobile_phones != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Mobile_phones ?>" class="link_display_category">Mobile phones</a>
</div>
<?php 
}
?>

<?php 
if($Phone_accessories != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Phone_accessories ?>" class="link_display_category">Phone accessories</a>
</div>
<?php 
}
?>

<?php 
if($Computers != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Computers ?>" class="link_display_category">Computers</a>
</div>
<?php 
}
?>

<?php 
if($Computer_accessories != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Computer_accessories ?>" class="link_display_category">Computer accessories</a>
</div>
<?php 
}
?>

<?php 
if($Clothing_and_Fashion != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Clothing_and_Fashion ?>" class="link_display_category">Clothing and fashion</a>
</div>
<?php 
}
?>

<?php 
if($Perfume_and_cologne != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Perfume_and_cologne ?>" class="link_display_category">Perfume and cologne</a>
</div>
<?php 
}
?>

<?php 
if($Furniture != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Furniture ?>" class="link_display_category">Furniture</a>
</div>
<?php 
}
?>

<?php 
if($Art_and_crafting_material != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Art_and_crafting_material ?>" class="link_display_category">Art and crafting material</a>
</div>
<?php 
}
?>

<?php 
if($Skin_care != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Skin_care ?>" class="link_display_category">Skin care</a>
</div>
<?php 
}
?>

<?php 
if($Car_dealer != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Car_dealer ?>" class="link_display_category">Car dealer</a>
</div>
<?php 
}
?>

<?php 
if($Poster_and_art_work != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Poster_and_art_work ?>" class="link_display_category">Poster and art work</a>
</div>
<?php 
}
?>

<?php 
if($Home_appliances != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Home_appliances ?>" class="link_display_category">Home appliances</a>
</div>
<?php 
}
?>

<?php 
if($Interior_decoration != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Interior_decoration ?>" class="link_display_category">Interior decoration</a>
</div>
<?php 
}
?>

<?php 
if($Electron_appliances != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Electron_appliances ?>" class="link_display_category">Electronic appliances</a>
</div>
<?php 
}
?>

<?php 
if($Kitchen_utensils != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Kitchen_utensils ?>" class="link_display_category">Kitchen utensils</a>
</div>
<?php 
}
?>

<?php 
if($Wine_merchant != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Wine_merchant ?>" class="link_display_category">Wine merchant</a>
</div>
<?php 
}
?>

<?php 
if($Pharmacy != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Pharmacy ?>" class="link_display_category">Pharmacy</a>
</div>
<?php 
}
?>

<?php 
if($Food_vendor != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Food_vendor ?>" class="link_display_category">Food vendor</a>
</div>
<?php 
}
?>

</div>
<br>
<button type="submit" name="cancel" class="btncancel_text cancel">
Cancel
</button><br>

</div>
</div>
</div>
<?php
}
?>