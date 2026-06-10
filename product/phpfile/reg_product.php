<?php 
include("check_session.php");

if(isset($_POST['reg_p_name'])){
    $reg_p_name = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_p_name'])));
    $reg_p_discription = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_p_discription'])));
    $reg_p_category = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_p_category'])));
    $reg_p_img = htmlentities(mysqli_real_escape_string($conn, $_FILES['reg_p_img']['name']));
    $reg_p_price = htmlentities(mysqli_real_escape_string($conn, $_POST['reg_p_price']));

    if(empty($reg_p_name) or empty($reg_p_discription)or empty($reg_p_category)or empty($reg_p_img)){
        echo "<script>alert('All input field are required!')</script>"; 
        exit();
    }
    if(!preg_match('/^[0-9]*$/',$reg_p_price)){
        echo "<script>alert('Price must be number!')</script>";
        exit();
    }
    $reg_p_img_explode = explode('.', $reg_p_img);
    $reg_p_img_end_explode = end($reg_p_img_explode);
    $reg_p_img_extention = ['PNG', 'JPEG', 'JPG', 'HEIF', 'JFIF', 'png', 'jpeg', 'jpg', 'jfif'];
    
    if(in_array($reg_p_img_end_explode, $reg_p_img_extention) === true){
        
    $time = time();
    $rand = rand(1, 9999);
    $new_reg_p_img_name = $time.$rand.$reg_p_img;
    $reg_p_img_tmp_name = $_FILES['reg_p_img']['tmp_name'];
    $reg_p_img_folder = '../../reg_img/'.$new_reg_p_img_name;


    $save_reg_product = mysqli_query($conn, "INSERT INTO reg_product(p_name, p_discription, p_category, p_image, brand_unique_id, reg_p_price, member)
                        VALUE('$reg_p_name', '$reg_p_discription', '$reg_p_category', '$new_reg_p_img_name', '$brand_unique_id', '$reg_p_price', '$member')");
    if($save_reg_product){
        move_uploaded_file($reg_p_img_tmp_name, $reg_p_img_folder);

        $last_id = mysqli_insert_id($conn);
        if($last_id){
            $code = rand(1, 999999);
            $p_unique_id = $reg_p_name."_".$last_id.$code;
            $update_p_unique_id =  mysqli_query($conn, "UPDATE reg_product SET p_unique_id = '$p_unique_id' WHERE product_id = '$last_id'");
                
                
                    switch ($reg_p_category) {
                    case "Other_product":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Other_product = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Gadgets":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Gadgets = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Mobile_phones":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Mobile_phones = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Phone_accessories":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Phone_accessories = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Computers":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Computers = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Computer_accessories":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Computer_accessories = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Clothing_and_Fashion":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Clothing_and_Fashion = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Perfume_and_cologne":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Perfume_and_cologne = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Furniture":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Furniture = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Art_and_crafting_material":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Art_and_crafting_material = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Skin_care":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Skin_care = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Car_dealer":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Car_dealer = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Poster_and_art_work":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Poster_and_art_work = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Home_appliances":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Home_appliances = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Interior_decoration":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Interior_decoration = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Electron_appliances":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Electron_appliances = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Kitchen_utensils":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Kitchen_utensils = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Wine_merchant":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Wine_merchant = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Pharmacy":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Pharmacy = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                    case "Food_vendor":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Food_vendor = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Product update successfull!')</script>";
                      break;
                  }
                
                
                



/*
                if($reg_p_category == "Other_product"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Other_product = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Gadgets"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Gadgets = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }
                
                if($reg_p_category == "Mobile_phones"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Mobile_phones = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Phone_accessories"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Phone_accessories = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Computers"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Computers = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Computer_accessories"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Computer_accessories = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Clothing_and_Fashion"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Clothing_and_Fashion = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Perfume_and_cologne"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Perfume_and_cologne = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Furniture"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Furniture = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Art_and_crafting_material"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Art_and_crafting_material = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Skin_care"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Skin_care = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Car_dealer"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Car_dealer = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Poster_and_art_work"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Poster_and_art_work = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Home_appliances"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Home_appliances = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Interior_decoration"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Interior_decoration = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Electron_appliances"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Electron_appliances = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Kitchen_utensils"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Kitchen_utensils = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Wine_merchant"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Wine_merchant = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }
                
*/

            
        }
    }
        
    }else{
         echo "<script>alert('Please select an img file - jpeg, png, jpg!')</script>";
        exit();
    }
    

}
?>