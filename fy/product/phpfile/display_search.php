<?php 
include("../phpfile/connectdb.php");
if(isset($_POST['inp_search'])){
    $inp_search = htmlentities(mysqli_real_escape_string($conn, $_POST["inp_search"]));
    $query = mysqli_query($conn, "SELECT * FROM reg_product WHERE p_name LIKE '%$inp_search%' AND status = ''  AND member = 'FY_001_MEM'");
    if(mysqli_num_rows($query) > 0){  ?>
    <div class="div_display_search">
        <?php while($query_row = mysqli_fetch_array($query)){  
            $category = $query_row['p_category'];
            if($category == "Other_product"){
                $link_category = "Other_product";
            }elseif($category == "Gadgets"){
                $link_category = "Gadgets";
            }elseif($category == "Mobile_phones"){
                $link_category = "Mobile_phones";
            }elseif($category == "Phone_accessories"){
                $link_category = "Phone_accessories";
            }elseif($category == "Computers"){
                $link_category = "Computers";
            }elseif($category == "Computer_accessories"){
                $link_category = "Computer_accessories";
            }elseif($category == "Clothing_and_Fashion"){
                $link_category = "Clothing_and_Fashion";
            }elseif($category == "Perfume_and_cologne"){
                $link_category = "Perfume_and_cologne";
            }elseif($category == "Furniture"){
                $link_category = "Furniture";
            }elseif($category == "Art_and_crafting_material"){
                $link_category = "Art_and_crafting_material";
            }elseif($category == "Skin_care"){
                $link_category = "Skin_care";
            }elseif($category == "Car_dealer"){
                $link_category = "Car_dealer";
            }elseif($category == "Poster_and_art_work"){
                $link_category = "Poster_and_art_work";
            }elseif($category == "Home_appliances"){
                $link_category = "Home_appliances";
            }elseif($category == "Interior_decoration"){
                $link_category = "Interior_decoration";
            }elseif($category == "Electron_appliances"){
                $link_category = "Electron_appliances";
            }elseif($category == "Kitchen_utensils"){
                $link_category = "Kitchen_utensils";
            }elseif($category == "Wine_merchant"){
                $link_category = "Wine_merchant";
            }
        ?>
        <a href="<?= $link_category ?>.php" target="_blank" class="log_link"><?= $query_row['p_name']; ?></a><hr>
        <?php  } ?>
    </div>
        <?php }else{ ?>
    <div class="div_display_search">
        <a>no record</a>
    </div>  
       <?php } ?>
<?php } ?>