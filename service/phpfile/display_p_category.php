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
<h4>Service Categories</h4><hr> 


<?php 
if($Other_service != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Other_service ?>" class="link_display_category">Other service</a>
</div>
<?php 
}
?>

<?php 
if($Dry_cleaner != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Dry_cleaner ?>" class="link_display_category">Dry cleaner</a>
</div>
<?php 
}
?>

<?php 
if($Mechanic != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Mechanic ?>" class="link_display_category">Mechanic</a>
</div>
<?php 
}
?>

<?php 
if($Rewire != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Rewire ?>" class="link_display_category">Rewire</a>
</div>
<?php 
}
?>

<?php 
if($Furniture_work != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Furniture_work ?>" class="link_display_category">Furniture work</a>
</div>
<?php 
}
?>

<?php 
if($Generator_repairer != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Generator_repairer ?>" class="link_display_category">Generator repairer</a>
</div>
<?php 
}
?>

<?php 
if($Phone_repairer != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Phone_repairer ?>" class="link_display_category">Phone repairer</a>
</div>
<?php 
}
?>

<?php 
if($Computer_repairer != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Computer_repairer ?>" class="link_display_category">Computer repairer</a>
</div>
<?php 
}
?>

<?php 
if($Plumber != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Plumber ?>" class="link_display_category">Plumber</a>
</div>
<?php 
}
?>

<?php 
if($Tailor != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Tailor ?>" class="link_display_category">Tailor</a>
</div>
<?php 
}
?>

<?php 
if($Hairstylist != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Hairstylist ?>" class="link_display_category">Hairstylist</a>
</div>
<?php 
}
?>

<?php 
if($Painter != ""){
?>
<div class="div_inside_display_category">
    <a href="product_page.php?pn=<?= $Painter ?>" class="link_display_category">Painter</a>
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