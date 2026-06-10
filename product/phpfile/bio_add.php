<?php
include_once "check_session.php";
if(isset($_POST["btn_update_bio"])){
    $input_bio = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['input_bio'])));
    $update_bio = mysqli_query($conn, "UPDATE brand_register SET bio = '$input_bio' WHERE b_unique_id = '$brand_unique_id'");
    if($update_bio){
    echo "<script>alert('BIO updated successful')</script>";
    }else{
    echo "<script>alert('somethine went worng try again')</script>";
    }
    exit();
}
?>
<script src="jsfile/cancel_displays.js"></script>
<script src="jsfile/bio_add.js"></script>
<?php
if(isset($_POST['bio_add'])){ ?>


<div class="divshow">
<div class="divinnershow">
<div class="insidediv">

<button type="submit" name="cancel" class="btncancel cancel">
<i class="bi bi-x-circle-fill"></i>
</button>
<br><hr>
<div class="div_display_category">
<h4>Enter your BIO</h4><hr> 
<form method="post" action="" class="add_bio_form">
<textarea name="input_bio" class="input_bio" ><?= $bio ?></textarea>
<button type="submit" name="btn_update_bio" class="btn_reg_submit btn_update_bio">Submit</button>
</form>
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