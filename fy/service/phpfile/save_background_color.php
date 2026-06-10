<?php
include_once "check_session.php";
if(isset($_POST["btn_background_color"])){
    $background_color = htmlentities(mysqli_real_escape_string($conn, $_POST["background_color"]));
    $update_or_status = mysqli_query($conn, "UPDATE brand_register SET background_color = '$background_color' WHERE b_unique_id  ='$brand_unique_id'");
    
    if($update_or_status){ ?>
    <script>alert('background update successfull')</script>
    <?php
    }else{ ?>
    <script>alert('something went wrong try again')</script>
    <?php
    }
    ?>

<div style="background-color: <?= $background_color ?>; border:2px solid red; width:150px; height:150px;">
</div>


<?php
}
?>