<?php
include("connectdb.php");
if(isset($_POST["gnc"])){
   $rand_num = rand(999, 10000);
   $nc = htmlentities(mysqli_real_escape_string($conn, "FY-".''.$rand_num.''."-MEM"));
   $fy_unique_id = "fy_37416_mem";
   $update_lc = mysqli_query($conn, "UPDATE fy_member SET last_code = '$nc'");
   if($update_lc){ 
$select_code = mysqli_query($conn, "SELECT * FROM fy_member WHERE fy_unique_id = '$fy_unique_id'");
$fetch_code = mysqli_fetch_assoc($select_code);
$code = $fetch_code["last_code"];
      ?>
<input type="text" name="" id="myInput" value="<?= $code; ?>">
<button type="button" class="btn_copy_p_c" onclick="myFunction()"><i class="bi bi-check2-square"></i></button>
 <?php  }

}
?>