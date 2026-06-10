<?php
include_once "check_session.php";
if(isset($_POST['btn_delete_p'])){
    $p_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['p_unique_id']));
    $product_name = htmlentities(mysqli_real_escape_string($conn, $_POST['product_name']));

    $delete_product = mysqli_query($conn, "DELETE FROM reg_product WHERE p_unique_id= '$p_unique_id'");

    if($delete_product){
        $select_pn = mysqli_query($conn, "SELECT * FROM reg_product WHERE p_category = '$product_name' AND brand_unique_id = '$brand_unique_id' ORDER by 1 DESC");
        $num_select_pn = mysqli_num_rows($select_pn);
        if($num_select_pn > 0){ 
       ?>
       
       
       <?php
       while($fetch_pd = mysqli_fetch_assoc($select_pn)){
           $p_name = $fetch_pd['p_name'];
           $p_image = $fetch_pd['p_image'];
           $p_discription = $fetch_pd['p_discription'];
           $p_unique_id = $fetch_pd['p_unique_id'];
           $reg_p_price = $fetch_pd['reg_p_price'];
           $status = $fetch_pd['status'];

       ?>
       

       <div class="div_while_pp">
       <form method="post" action="" class="form_p_details">
       <input type="hidden" name="p_unique_id" class="p_unique_id" value="<?=$p_unique_id;?>">
       <input type="hidden" name="product_name" class="product_name" value="<?=$product_name;?>">
       <div class="div_while_inner_pp">
       <img src="../../reg_img<?=$p_image;?>" class="p_image"><br>
       <div class="div_p_details">
       <span class="span_p_details">Price: </span>&#8358;<?= number_format($reg_p_price); ?><br>
       <span class="span_p_details">Name: </span><?= $p_name; ?><br>
       <span class="span_p_details">Discription: </span><?= $p_discription; ?>
       </div>
       </div>
       
<div class="div_btn_p">
<div class="div_while_p">
    <button type="submit" name="btn_delete_p" class="btn_delete_p btn_p"><i class="bi bi-trash"></i></button>
    <button type="submit" name="btn_edit_p" class="btn_edit_p btn_p"><i class="bi bi-pencil-fill"></i></button><br>
    <?php if($status == ""){ ?>
    <button type="submit" name="btn_available" class="btn_available btn_p"><i class="bi bi-check-circle-fill"></i></button>
<?php }else{ ?>
    <button type="submit" name="btn_not_available" class="btn_not_available btn_p"><i class="bi bi-dash-circle-fill"></i></button>
<?php } ?>
</div>
</div>
       </form>
       </div>

       
       <?php
       }
       ?>
       
       <?php
       } ?>
       <?php 
       }
       }
       ?>
<script src="jsfile/delete_product.js"></script>
<script src="jsfile/edit_product.js"></script>
<script src="jsfile/available.js"></script>
<script src="jsfile/not_available.js"></script>