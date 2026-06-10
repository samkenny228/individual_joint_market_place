<?php
include_once "check_session.php";

if(isset($_POST['reg_p_name'])){
    $reg_p_name = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_p_name'])));
    $reg_p_discription = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_p_discription'])));
    $reg_p_img = htmlentities(mysqli_real_escape_string($conn, $_FILES['reg_p_img']['name']));
    $reg_p_price = htmlentities(mysqli_real_escape_string($conn, $_POST['reg_p_price']));
    $p_category = htmlentities(mysqli_real_escape_string($conn, $_POST['p_category']));
    $p_unique_id = htmlentities(mysqli_real_escape_string($conn, $_POST['p_unique_id']));


    if(empty($reg_p_name) or empty($reg_p_discription) or empty($reg_p_price) or empty($p_category) or empty($p_unique_id)){
        echo "<script>alert('All input field are required!')</script>"; 
        exit();
    }

    if(!preg_match('/^[0-9]*$/',$reg_p_price)){
        echo "<script>alert('Price must be number!')</script>";
        exit();
    }

    if($reg_p_img != ""){
        $reg_p_img_explode = explode('.', $reg_p_img);
        $reg_p_img_end_explode = end($reg_p_img_explode);
        $reg_p_img_extention = ['PNG', 'JPEG', 'JPG', 'HEIF', 'JFIF', 'png', 'jpeg', 'jpg', 'jfif'];
        if(in_array($reg_p_img_end_explode, $reg_p_img_extention) != true){
            echo "<script>alert('Please select an img file - jpeg, png, jpg!')</script>";
            exit();
        }
        $time = time();
        $rand = rand(1, 9999);
        $new_reg_p_img_name = $time.$rand.$reg_p_img;
        $reg_p_img_tmp_name = $_FILES['reg_p_img']['tmp_name'];
        $reg_p_img_folder = 'reg_p_img/'.$new_reg_p_img_name;

        $edit_product = mysqli_query($conn, "UPDATE reg_product SET p_name = '$reg_p_name', p_discription = '$reg_p_discription', p_image = '$new_reg_p_img_name', reg_p_price = '$reg_p_price' WHERE p_unique_id = '$p_unique_id'");

        if($edit_product){
            move_uploaded_file($reg_p_img_tmp_name, $reg_p_img_folder);
            echo "<script>alert('Product edit successfull! reload when you finish editing the once you want to edit.')</script>"; 
           //echo "<script>window.open('product_page.php?pn=$p_category', '_self')</script>";
            ?>


       <?php }

    }else{
        $edit_product = mysqli_query($conn, "UPDATE reg_product SET p_name = '$reg_p_name', p_discription = '$reg_p_discription', reg_p_price = '$reg_p_price' WHERE p_unique_id = '$p_unique_id'");

        if($edit_product){
            echo "<script>alert('Product edit successfull! reload when you finish editing the once you want to edit.')</script>"; 
           //echo "<script>window.open('product_page.php?pn=$p_category', '_self')</script>";
            
            ?>

      <?php  }
    }

?>


<?php
}

?>
<script src="jsfile/delete_product.js"></script>
<script src="jsfile/edit_product.js"></script>
<script src="jsfile/available.js"></script>
<script src="jsfile/not_available.js"></script>