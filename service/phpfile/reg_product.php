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
    if(in_array($reg_p_img_end_explode, $reg_p_img_extention) != true){
        echo "<script>alert('Please select an img file - jpeg, png, jpg!')</script>";
        exit();
    }
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
            if($update_p_unique_id){
                
                
                

                switch ($reg_p_category) {
                    case "Other_service":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Other_service = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Dry_cleaner":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Dry_cleaner = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Mechanic":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Mechanic = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Rewire":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Rewire = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Furniture_work":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Furniture_work = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Generator_repairer":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Generator_repairer = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Phone_repairer":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Phone_repairer = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Computer_repairer":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Computer_repairer = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Plumber":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Plumber = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Art_and_crafting_material":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Art_and_crafting_material = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Tailor":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Tailor = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Hairstylist":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Hairstylist = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                    case "Painter":
                        $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Painter = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                        echo "<script>alert('Service update successfull!')</script>";
                      break;
                  }

                
                

/*                if($reg_p_category == "Other_service"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Other_service = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Service update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Dry_cleaner"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Dry_cleaner = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Service update successfull!')</script>";
                    exit();
                }
                
                if($reg_p_category == "Mechanic"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Mechanic = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Service update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Rewire"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Rewire = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Service update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Furniture_work"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Furniture_work = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Service update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Generator_repairer"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Generator_repairer = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Service update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Phone_repairer"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Phone_repairer = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Service update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Computer_repairer"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Computer_repairer = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Service update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Plumber"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Plumber = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Art_and_crafting_material"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Art_and_crafting_material = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Service update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Tailor"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Tailor = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Service update successfull!')</script>";
                    exit();
                }

                if($reg_p_category == "Car_dealer"){
                    $update_p_brand_reg = mysqli_query($conn, "UPDATE brand_register SET Car_dealer = '$reg_p_category' WHERE b_unique_id = '$brand_unique_id'");
                    echo "<script>alert('Product update successfull!')</script>";
                    exit();
                }
*/

            }
        }
    }
}
?>