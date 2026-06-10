<?php
include_once "check_session.php";
if(isset($_POST["btn_add_map"])){
    $input_add_map = mysqli_real_escape_string($conn, $_POST['input_add_map']);
    $update_map = mysqli_query($conn, "UPDATE brand_register SET location = '$input_add_map' WHERE b_unique_id = '$brand_unique_id'");
    if($update_map){
    echo "<script>alert('map updated successful')</script>";
    }else{
    echo "<script>alert('somethine went worng try again')</script>";
    }
    exit();
}
?>
<script src="jsfile/cancel_displays.js"></script>
<script src="jsfile/add_location.js"></script>
<?php
if(isset($_POST['add_location'])){ ?>


<div class="divshow">
<div class="divinnershow">
<div class="insidediv">

<button type="submit" name="cancel" class="btncancel cancel">
<i class="bi bi-x-circle-fill"></i>
</button>
<br><hr>
<div class="div_add_map">
<h4>Add map</h4><hr> 

<form method="post" action="" class="add_map_form" enctype="multipart/form-data">
<input type="text" name="input_add_map" class="inp_reg_style input_add_map" placeholder="Add Map" value="<?= $location ?>">
<button type="submit" class="btn_reg_submit btn_add_map">Submit</button><br>
<br>
</form>

<h5>How to add map</h5>
<ol>
<li>Open Google Maps and find the location you want embed.</li>
<li>click on the three vertical dots in the top right corner of the screen.</li>
<li>Select "Share or embed map" from the dropdown menu.</li>
<li>In the "Share or embed mp" window, select the "Embed map" tab.</li>
<li>Choose the size and settings you want for your embed map</li>
<li>Copy the code HTML code provided in the "Embed map" tab</li>
<li>Paste the code into form the enter submit</li>
<li>Watch <a href="#">video</a></li>
</ol>
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