<?php 
include("header.php");
if(isset($_POST['go_place_unique_id'])){
    $go_place_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['go_place_unique_id']));
    $delete_goplace = mysqli_query($conn, "DELETE FROM brand_go_places WHERE unique_go_place_id = '$go_place_unique_id' AND brand_unique_id = '$brand_unique_id'");
if($delete_goplace){
    echo "<script>alert('Drop-point delete successfull!')</script>";
    echo "<script>window.open('go_place.php', '_self')</script>";
}
};

if(isset($_POST["go_place"])){
    $go_place = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['go_place'])));
    $go_place_price = htmlentities(mysqli_real_escape_string($conn, $_POST['go_place_price']));

    if(empty($go_place_price) or empty($go_place)){
        echo "<script>alert('All input field required!')</script>";
    }else{
    if(!preg_match('/^[0-9]*$/',$go_place_price)){
        echo "<script>alert('Price must be number!')</script>";
    }else{
    $insert_into_brand_go_placew = mysqli_query($conn, "INSERT INTO brand_go_places(go_place, go_place_price, brand_unique_id)
    VALUE('$go_place', '$go_place_price', '$brand_unique_id')");

    $last_id = mysqli_insert_id($conn);
    if($last_id){
    $code = rand(1, 9999);
    $p_unique_id = "GoP"."_".$last_id.$code;
    $unique_go_place_id =  mysqli_query($conn, "UPDATE brand_go_places SET unique_go_place_id = '$p_unique_id' WHERE go_place_id  = '$last_id'");
    if($unique_go_place_id){
        echo "<script>alert('Drop-point upload successfull!')</script>"; 
        echo "<script>window.open('go_place.php', '_self')</script>";
    }
            }
        }
    }
}
?>

<div class="container">

<div class="div_ingoplace">
<div class="div_inergoplace">
<h3 class="reg_heading">Register your<br> Drop-off Piont </h3>

<form method="post" action="" id="go_places_form" enctype="multipart/form-data">
    <input type="text" name="go_place" class="inp_reg_style go_place" placeholder="Enter Drop-off Piont"><br>
    <input type="text" name="go_place_price" class="inp_reg_style go_place_price" placeholder="Enter Price"><br>
    <button type="submit" name="btn_go_places" class="btn_reg_submit btn_go_places">Submit <span id="spin_message"></span></button>
</form>
</div>
<div id="go_place_message">
<?php 
if(mysqli_num_rows($select_goplaces) > 0){
while($fetch = mysqli_fetch_assoc($select_goplaces)){
    $go_place = $fetch['go_place'];
    $go_place_price = $fetch['go_place_price'];
    $go_place_unique_id = $fetch['unique_go_place_id'];
?>
<form method="post" action="" id="delect_goplace_form"  enctype="multipart/form-data">
<input type="hidden" name="go_place_unique_id" class="go_place_unique_id" value="<?= $go_place_unique_id ?>">
<p class="li_loc"><button type="submit" name="btn_delete_location" class="btn_delete_location"> <i class="bi bi-trash-fill"></i></button> <?= $go_place; ?> // Price: &#8358;<?= $go_place_price; ?></p>
</form>
<?php 
}
}else{
?>
<p>Add locations</p>
<?php
} ?>
</div>
</div>
</div>




<!-- <div class="container">
<?php if($current_date >= $premium_expire){ ?>
adds here
<?php } ?>
</div> -->

<div style="height: 10px;"></div>
<?php 
include("footer.php"); 
?>

</body>
</html>