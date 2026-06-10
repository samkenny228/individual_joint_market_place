<?php
if(isset($_POST['update_profile_d'])){

//if($current_date <= $premium_expire){

    $brand_name = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_brand_name'])));
    $brand_email = htmlentities(mysqli_real_escape_string($conn, $_POST['reg_email']));
    $bank_account_name = htmlentities(mysqli_real_escape_string($conn, $_POST['bank_account_name']));
    $bank_name = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['bank_name'])));
    $bank_account_number = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['bank_account_number'])));
    $phone_number = htmlentities(mysqli_real_escape_string($conn, $_POST['phone_number']));
    $facebooklink = htmlentities(mysqli_real_escape_string($conn, $_POST['facebooklink']));
    $whatsapplink = htmlentities(mysqli_real_escape_string($conn, $_POST['whatsapplink']));
    $instagramlink = htmlentities(mysqli_real_escape_string($conn, $_POST['instagramlink']));
    $brand_logo = htmlentities(mysqli_real_escape_string($conn, $_FILES['brand_logo']['name']));
    
    if(empty($brand_name) or empty($brand_email) or empty($bank_account_name) or empty($bank_name) or empty($bank_account_number)or empty($bank_account_number)){
        echo "<script>alert('All input field are required!')</script>"; 
    }
    if(!preg_match('/^[0-9]*$/',$bank_account_number)){
        echo "<script>alert('account number must be number!')</script>";
        echo "<script>window.open('edit_profile.php', '_self')</script>";
    }
    if(!preg_match('/^[0-9]*$/',$phone_number)){
        echo "<script>alert('phone number must be number!')</script>";
        echo "<script>window.open('edit_profile.php', '_self')</script>";
    }

    if($brand_logo != ""){
        $brand_logo_explode = explode('.', $brand_logo);
        $brand_logo_end_explode = end($brand_logo_explode);
        $brand_logo_extention = ['PNG', 'JPEG', 'JPG', 'HEIF', 'JFIF', 'png', 'jpeg', 'jpg', 'jfif'];
        if(in_array($brand_logo_end_explode, $brand_logo_extention) != true){
            echo "<script>alert('Please select an img file - jpeg, png, jpg!')</script>";
            exit();
        }

        $time = time();
        $rand = rand(1, 9999);
        $new_brand_logo_name = $time.$rand.$brand_logo;
        $brand_logo_tmp_name = $_FILES['brand_logo']['tmp_name'];
        $brand_logo_folder = '../../reg_img/'.$new_brand_logo_name;
        move_uploaded_file($brand_logo_tmp_name, $brand_logo_folder);
    }

    $select_reg_brand_name = mysqli_query($conn, "SELECT * FROM brand_register WHERE brand_name = '$brand_name'");
    if(mysqli_num_rows($select_reg_brand_name) > 0){
        echo "<script>alert('Brand name alredy exit!')</script>"; 
    }
    
    $select_reg_brand_email = mysqli_query($conn, "SELECT * FROM brand_register WHERE email = '$brand_email'");
    if(mysqli_num_rows($select_reg_brand_email) > 0){
        echo "<script>alert('Email alredy exit!')</script>"; 
    }
    
    $update_profile = mysqli_query($conn, "UPDATE brand_register SET brand_name = '$brand_name', email = '$brand_email', bank_account_name = '$bank_account_name', bank_name = '$bank_name', bank_account_number = '$bank_account_number', facebooklink = '$facebooklink', whatsapplink = '$whatsapplink', instagramlink = '$instagramlink', brand_logo = '$new_brand_logo_name' WHERE b_unique_id = '$brand_unique_id'");
    if($update_profile){
        
        echo "<script>alert('profile updated successful!')</script>";    
        echo "<script>window.open('edit_profile.php', '_self')</script>";
    }else{
        echo "<script>alert('somting went wrong try again!')</script>"; 
    }

/*}else{

    $brand_name = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_brand_name'])));
    $brand_email = htmlentities(mysqli_real_escape_string($conn, $_POST['reg_email']));

    if(empty($brand_name) or empty($brand_email)){
        echo "<script>alert('All input field are required!')</script>"; 
    }

    $select_reg_brand_name = mysqli_query($conn, "SELECT * FROM brand_register WHERE brand_name = '$brand_name'");
    if(mysqli_num_rows($select_reg_brand_name) > 0){
        echo "<script>alert('Brand name alredy exit!')</script>"; 
    }
    
    $select_reg_brand_email = mysqli_query($conn, "SELECT * FROM brand_register WHERE email = '$brand_email'");
    if(mysqli_num_rows($select_reg_brand_email) > 0){
        echo "<script>alert('Email alredy exit!')</script>"; 
    }

    $update_profile = mysqli_query($conn, "UPDATE brand_register SET brand_name = '$brand_name', email = '$brand_email' WHERE b_unique_id = '$brand_unique_id'");
    if($update_profile){
        echo "<script>alert('profile updated successful!')</script>";    
        echo "<script>window.open('edit_profile.php', '_self')</script>";
    }else{
        echo "<script>alert('somting went wrong try again!')</script>"; 
    }


} */
}
?>