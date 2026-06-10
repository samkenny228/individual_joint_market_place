<?php
session_start();
include_once "connectdb.php";
if(isset($_POST['reg_brand_name'])){
    $brand_name = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_brand_name'])));
    $brand_email = htmlentities(mysqli_real_escape_string($conn, $_POST['reg_email']));
    $password = htmlentities(mysqli_real_escape_string($conn, $_POST['reg_password']));
    $confirm_password = htmlentities(mysqli_real_escape_string($conn, $_POST['reg_confirm_password']));
    $state = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_state'])));
    $product = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_product'])));
    $bank_account_name = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['bank_account_name'])));
    $bank_name = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['bank_name'])));
    $bank_account_number = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['bank_account_number'])));
    $reg_phone_num = htmlentities(mysqli_real_escape_string($conn, ucfirst($_POST['reg_phone_num'])));
    $currency = htmlentities(mysqli_real_escape_string($conn, $_POST['reg_currency']));
    $emc = htmlentities(mysqli_real_escape_string($conn, $_POST['emc']));
    $member = htmlentities(mysqli_real_escape_string($conn, "FY_001_MEM"));
    $status = "active_now";
    
$todays_date = date('Y-m-d');
$i = '30';
$exd = date('Y-m-d', strtotime(date('Y-m-d', strtotime($todays_date)).'+'.$i.'days'));
$prem_expd = strtotime($exd);

    if(empty($brand_name) or empty($brand_email)or empty($password)or empty($confirm_password)or empty($confirm_password)
     or empty($product) or empty($state) or empty($bank_account_name) or empty($bank_name) or empty($bank_account_number)  or empty($reg_phone_num) or empty($currency)){
        echo "<script>alert('All input field are required!')</script>"; 
        exit();
    }
    if(!preg_match('/^[0-9]*$/',$reg_phone_num) or !preg_match('/^[0-9]*$/',$bank_account_number)){
        echo "<script>alert('Phone number or account number must be number!')</script>";
        exit();
    }
    if($password != $confirm_password){
        echo "<script>alert('Password dose not match!')</script>"; 
        exit();
    }
    $select_reg_brand_name = mysqli_query($conn, "SELECT * FROM brand_register WHERE brand_name = '$brand_name'");
    if(mysqli_num_rows($select_reg_brand_name) > 0){
        echo "<script>alert('Brand name alredy exit try another Brand name!')</script>"; 
        exit(); 
    }
    $select_reg_brand_email = mysqli_query($conn, "SELECT * FROM brand_register WHERE email = '$brand_email'");
    if(mysqli_num_rows($select_reg_brand_email) > 0){
        echo "<script>alert('Email alredy exit try another email!')</script>"; 
        exit(); 
    }
    $select_emc = mysqli_query($conn, "SELECT * FROM fy_member WHERE last_code = '$emc'");
    if(mysqli_num_rows($select_emc) < 1){
        echo "<script>alert('ENTER! The correct membership code!')</script>"; 
        exit(); 
    }


    if($product == "Other_product"){
    $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Other_product, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
    values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");

    if($save_brand_detailes){
        $last_id = mysqli_insert_id($conn);
        if($last_id){
            $code = rand(1, 9999);
            $brand_unique_id = $code."".$last_id;
            $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
        }
        if($update_brand_unique_id){
        $_SESSION["brand_email"] = $brand_email; 
        $_SESSION["brand_unique_id"] = $brand_unique_id;
        echo "<script>window.open('index.php', '_self')</script>";
        exit();
        }
    }
    }

    
    if($product == "Gadgets"){
        $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Gadgets, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
        values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
    
        if($save_brand_detailes){
            $last_id = mysqli_insert_id($conn);
            if($last_id){
                $code = rand(1, 9999);
                $brand_unique_id = $code."".$last_id;
                $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
            }
            if($update_brand_unique_id){
            $_SESSION["brand_email"] = $brand_email; 
            $_SESSION["brand_unique_id"] = $brand_unique_id;
            echo "<script>window.open('index.php', '_self')</script>";
            exit();
            }
        }
        }

        if($product == "Mobile_phones"){
            $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Mobile_phones, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
            values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
        
            if($save_brand_detailes){
                $last_id = mysqli_insert_id($conn);
                if($last_id){
                    $code = rand(1, 9999);
                    $brand_unique_id = $code."".$last_id;
                    $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                }
                if($update_brand_unique_id){
                $_SESSION["brand_email"] = $brand_email; 
                $_SESSION["brand_unique_id"] = $brand_unique_id;
                echo "<script>window.open('index.php', '_self')</script>";
                exit();
                }
            }
            }


            if($product == "Phone_accessories"){
                $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Phone_accessories, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
            
                if($save_brand_detailes){
                    $last_id = mysqli_insert_id($conn);
                    if($last_id){
                        $code = rand(1, 9999);
                        $brand_unique_id = $code."".$last_id;
                        $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                    }
                    if($update_brand_unique_id){
                    $_SESSION["brand_email"] = $brand_email; 
                    $_SESSION["brand_unique_id"] = $brand_unique_id;
                    echo "<script>window.open('index.php', '_self')</script>";
                    exit();
                    }
                }
                }


                if($product == "Computers"){
                    $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Computers, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                    values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                
                    if($save_brand_detailes){
                        $last_id = mysqli_insert_id($conn);
                        if($last_id){
                            $code = rand(1, 9999);
                            $brand_unique_id = $code."".$last_id;
                            $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                        }
                        if($update_brand_unique_id){
                        $_SESSION["brand_email"] = $brand_email; 
                        $_SESSION["brand_unique_id"] = $brand_unique_id;
                        echo "<script>window.open('index.php', '_self')</script>";
                        exit();
                        }
                    }
                    }


                    if($product == "Computer_accessories"){
                        $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Computer_accessories, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                        values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                    
                        if($save_brand_detailes){
                            $last_id = mysqli_insert_id($conn);
                            if($last_id){
                                $code = rand(1, 9999);
                                $brand_unique_id = $code."".$last_id;
                                $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                            }
                            if($update_brand_unique_id){
                            $_SESSION["brand_email"] = $brand_email; 
                            $_SESSION["brand_unique_id"] = $brand_unique_id;
                            echo "<script>window.open('index.php', '_self')</script>";
                            exit();
                            }
                        }
                        }

                        if($product == "Clothing_and_Fashion"){
                            $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Clothing_and_Fashion, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                            values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                        
                            if($save_brand_detailes){
                                $last_id = mysqli_insert_id($conn);
                                if($last_id){
                                    $code = rand(1, 9999);
                                    $brand_unique_id = $code."".$last_id;
                                    $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                }
                                if($update_brand_unique_id){
                                $_SESSION["brand_email"] = $brand_email; 
                                $_SESSION["brand_unique_id"] = $brand_unique_id;
                                echo "<script>window.open('index.php', '_self')</script>";
                                exit();
                                }
                            }
                            }

                            if($product == "Perfume_and_cologne"){
                                $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Perfume_and_cologne, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                            
                                if($save_brand_detailes){
                                    $last_id = mysqli_insert_id($conn);
                                    if($last_id){
                                        $code = rand(1, 9999);
                                        $brand_unique_id = $code."".$last_id;
                                        $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                    }
                                    if($update_brand_unique_id){
                                    $_SESSION["brand_email"] = $brand_email; 
                                    $_SESSION["brand_unique_id"] = $brand_unique_id;
                                    echo "<script>window.open('index.php', '_self')</script>";
                                    exit();
                                    }
                                }
                                }

                                if($product == "Furniture"){
                                    $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Furniture, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                    values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                                
                                    if($save_brand_detailes){
                                        $last_id = mysqli_insert_id($conn);
                                        if($last_id){
                                            $code = rand(1, 9999);
                                            $brand_unique_id = $code."".$last_id;
                                            $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                        }
                                        if($update_brand_unique_id){
                                        $_SESSION["brand_email"] = $brand_email; 
                                        $_SESSION["brand_unique_id"] = $brand_unique_id;
                                        echo "<script>window.open('index.php', '_self')</script>";
                                        exit();
                                        }
                                    }
                                    }

                                    if($product == "Art_and_crafting_material"){
                                        $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Art_and_crafting_material, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                        values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                                    
                                        if($save_brand_detailes){
                                            $last_id = mysqli_insert_id($conn);
                                            if($last_id){
                                                $code = rand(1, 9999);
                                                $brand_unique_id = $code."".$last_id;
                                                $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                            }
                                            if($update_brand_unique_id){
                                            $_SESSION["brand_email"] = $brand_email; 
                                            $_SESSION["brand_unique_id"] = $brand_unique_id;
                                            echo "<script>window.open('index.php', '_self')</script>";
                                            exit();
                                            }
                                        }
                                        }

                                        if($product == "Skin_care"){
                                            $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Skin_care, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                            values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                                        
                                            if($save_brand_detailes){
                                                $last_id = mysqli_insert_id($conn);
                                                if($last_id){
                                                    $code = rand(1, 9999);
                                                    $brand_unique_id = $code."".$last_id;
                                                    $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                                }
                                                if($update_brand_unique_id){
                                                $_SESSION["brand_email"] = $brand_email; 
                                                $_SESSION["brand_unique_id"] = $brand_unique_id;
                                                echo "<script>window.open('index.php', '_self')</script>";
                                                exit();
                                                }
                                            }
                                            }

                                            if($product == "Poster_and_art_work"){
                                                $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Poster_and_art_work, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                                values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                                            
                                                if($save_brand_detailes){
                                                    $last_id = mysqli_insert_id($conn);
                                                    if($last_id){
                                                        $code = rand(1, 9999);
                                                        $brand_unique_id = $code."".$last_id;
                                                        $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                                    }
                                                    if($update_brand_unique_id){
                                                    $_SESSION["brand_email"] = $brand_email; 
                                                    $_SESSION["brand_unique_id"] = $brand_unique_id;
                                                    echo "<script>window.open('index.php', '_self')</script>";
                                                    exit();
                                                    }
                                                }
                                                }

                                                if($product == "Interior_decoration"){
                                                    $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Interior_decoration, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                                    values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                                                
                                                    if($save_brand_detailes){
                                                        $last_id = mysqli_insert_id($conn);
                                                        if($last_id){
                                                            $code = rand(1, 9999);
                                                            $brand_unique_id = $code."".$last_id;
                                                            $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                                        }
                                                        if($update_brand_unique_id){
                                                        $_SESSION["brand_email"] = $brand_email; 
                                                        $_SESSION["brand_unique_id"] = $brand_unique_id;
                                                        echo "<script>window.open('index.php', '_self')</script>";
                                                        exit();
                                                        }
                                                    }
                                                    }

                                                    if($product == "Electron_appliances"){
                                                        $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Electron_appliances, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                                        values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                                                    
                                                        if($save_brand_detailes){
                                                            $last_id = mysqli_insert_id($conn);
                                                            if($last_id){
                                                                $code = rand(1, 9999);
                                                                $brand_unique_id = $code."".$last_id;
                                                                $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                                            }
                                                            if($update_brand_unique_id){
                                                            $_SESSION["brand_email"] = $brand_email; 
                                                            $_SESSION["brand_unique_id"] = $brand_unique_id;
                                                            echo "<script>window.open('index.php', '_self')</script>";
                                                            exit();
                                                            }
                                                        }
                                                        }

                                                        if($product == "Kitchen_utensils"){
                                                            $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Kitchen_utensils, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                                            values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                                                        
                                                            if($save_brand_detailes){
                                                                $last_id = mysqli_insert_id($conn);
                                                                if($last_id){
                                                                    $code = rand(1, 9999);
                                                                    $brand_unique_id = $code."".$last_id;
                                                                    $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                                                }
                                                                if($update_brand_unique_id){
                                                                $_SESSION["brand_email"] = $brand_email; 
                                                                $_SESSION["brand_unique_id"] = $brand_unique_id;
                                                                echo "<script>window.open('index.php', '_self')</script>";
                                                                exit();
                                                                }
                                                            }
                                                            }

                                                            if($product == "Wine_merchant"){
                                                                $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Wine_merchant, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                                                values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                                                            
                                                                if($save_brand_detailes){
                                                                    $last_id = mysqli_insert_id($conn);
                                                                    if($last_id){
                                                                        $code = rand(1, 9999);
                                                                        $brand_unique_id = $code."".$last_id;
                                                                        $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                                                    }
                                                                    if($update_brand_unique_id){
                                                                    $_SESSION["brand_email"] = $brand_email; 
                                                                    $_SESSION["brand_unique_id"] = $brand_unique_id;
                                                                    echo "<script>window.open('index.php', '_self')</script>";
                                                                    exit();
                                                                    }
                                                                }
                                                                }

                                                                if($product == "Pharmacy"){
                                                                    $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Pharmacy, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                                                    values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                                                                
                                                                    if($save_brand_detailes){
                                                                        $last_id = mysqli_insert_id($conn);
                                                                        if($last_id){
                                                                            $code = rand(1, 9999);
                                                                            $brand_unique_id = $code."".$last_id;
                                                                            $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                                                        }
                                                                        if($update_brand_unique_id){
                                                                        $_SESSION["brand_email"] = $brand_email; 
                                                                        $_SESSION["brand_unique_id"] = $brand_unique_id;
                                                                        echo "<script>window.open('index.php', '_self')</script>";
                                                                        exit();
                                                                        }
                                                                    }
                                                                    }

                                                                    if($product == "Food_vendor"){
                                                                        $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Food_vendor, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
                                                                        values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd', '$status', '$member')");
                                                                    
                                                                        if($save_brand_detailes){
                                                                            $last_id = mysqli_insert_id($conn);
                                                                            if($last_id){
                                                                                $code = rand(1, 9999);
                                                                                $brand_unique_id = $code."".$last_id;
                                                                                $update_brand_unique_id = mysqli_query($conn, "UPDATE brand_register SET b_unique_id = '$brand_unique_id' WHERE brand_id = '$last_id'");
                                                                            }
                                                                            if($update_brand_unique_id){
                                                                            $_SESSION["brand_email"] = $brand_email; 
                                                                            $_SESSION["brand_unique_id"] = $brand_unique_id;
                                                                            echo "<script>window.open('index.php', '_self')</script>";
                                                                            exit();
                                                                            }
                                                                        }
                                                                        }
    

    


}
?>