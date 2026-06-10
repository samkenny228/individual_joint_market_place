<?php
include("check_session.php");
if(isset($_POST["btn_p_img"])){
    $p_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['p_unique_id']));
    $select_p_img = mysqli_query($conn, "SELECT * FROM reg_product WHERE p_unique_id = '$p_unique_id'");
    $fetch_p_img = mysqli_fetch_assoc($select_p_img);
    $p_image = $fetch_p_img['p_image'];
?>

<div class="divshow">
<div class="divinnershow">
<div class="insidediv" style="background-color:<?= $background_color;?>">
<form method="post" action="" class="cancel_form"> 
<button type="submit" name="cancel" class="btncancel cancel">
<i class="bi bi-x-circle-fill"></i>
</button>
</form>
<br><hr>
<div class="div_display_category">

<img class="dis_image" src="../../../reg_img/<?=$p_image;?>" class="">

</div>
<br>
<form method="post" action="" class="cancel_form"> 
<button type="submit" name="cancel" class="btncancel_text cancel">
Cancel
</button>
</form>
<br>

</div>
</div>
</div>
<?php } ?>
<script src="jsfile/display_p_img.js"></script>