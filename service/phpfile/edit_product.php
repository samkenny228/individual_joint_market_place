<?php
include_once "check_session.php";
if(isset($_POST['btn_edit_p'])){
    $p_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['p_unique_id']));
    $product_name = htmlentities(mysqli_real_escape_string($conn, $_POST['product_name']));

    if(empty($p_unique_id) or empty($product_name)){
        echo "<script>alert('something went wrong try again!')</script>";
        exit(); 
    }

    $select_p_edit = mysqli_query($conn, "SELECT * FROM reg_product WHERE p_unique_id = '$p_unique_id'");
    if(mysqli_num_rows($select_p_edit) < 1){
        echo "<script>alert('something went wrong try again!')</script>";
        exit();
    }

    $fetch_p_edit = mysqli_fetch_assoc($select_p_edit);
    $p_name = $fetch_p_edit['p_name'];
    $p_discription = $fetch_p_edit['p_discription'];
    $reg_p_price = $fetch_p_edit['reg_p_price']; 	
    $p_category = $fetch_p_edit['p_category']; 	

?>

<div class="divshow">
<div class="divinnershow">  
<div class="insidediv">

<form method="post" action="" class="form_edit_p" enctype="multipart/form-data">
<button type="submit" name="cancel_edit_message" class="btncancel cancel_edit_message">
<i class="fa-solid fa-xmark"></i>
</button>
<br><hr>
<div class="div_display_orders">
<h4>Edit product</h4><hr> 
<div class="div_jumbo_newpassword">

    <input type="hidden" name="p_unique_id" class="inp_reg_style p_unique_id" value="<?= $p_unique_id; ?>"><br>
    <input type="hidden" name="p_category" class="inp_reg_style p_category" value="<?= $p_category; ?>"><br>
    <input type="text" name="reg_p_name" class="inp_reg_style reg_p_name" value="<?= $p_name; ?>"><br>
    <input type="file" name="reg_p_img" class="inp_reg_style reg_p_img" accept="image/*"><br>
    <textarea type="text" name="reg_p_discription" class="inp_reg_style reg_p_discription"><?= $p_discription; ?></textarea><br>
    <input type="text" name="reg_p_price" class="inp_reg_style reg_p_price" value="<?= $reg_p_price; ?>"><br>
    <button type="submit" class="btn_reg_submit btn_save_edit_p">Submit</button>
    
</div>
</div>
<br>
<button type="submit" name="cancel_edit_message" class="btncancel_text cancel_edit_message">
Cancel
</button><br>
</form>

</div>
</div>
</div>
<?php
}
?>
<script src="jsfile/cancel_edit_message.js"></script>
<script src="jsfile/save_edit_p.js"></script>