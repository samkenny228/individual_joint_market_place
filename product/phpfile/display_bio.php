<script src="jsfile/display_bio.js"></script>
<?php
include("connectdb.php");
if(isset($_POST['btn_display_bio'])){ 
$brand_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['brand_unique_id']));
$select_brand_name = mysqli_query($conn, "SELECT * FROM brand_register  WHERE b_unique_id = '$brand_unique_id'");
$fetch_brand_name = mysqli_fetch_assoc($select_brand_name);
$bio = $fetch_brand_name['bio'];
$background_color = $fetch_brand_name['background_color'];

?>
<div class="divshow" >
<div class="divinnershow" >
<div class="insidediv"  style="background-color: <?= $background_color ?>;">

<button type="submit" name="cancel" class="btncancel cancel">
<i class="bi bi-x-circle-fill"></i>
</button>
<br><hr>
<div class="div_add_map">
<h4>Brand BIO</h4><hr> 
<?= $bio ?>
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