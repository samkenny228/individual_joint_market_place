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


     if($product == "Other_service"){
    $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Other_service, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire, status, member)
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

    
    if($product == "Dry_cleaner"){
        $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Dry_cleaner, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire)
        values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd')");
    
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

        if($product == "Mechanic"){
            $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Mechanic, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire)
            values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd')");
        
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


            if($product == "Rewire"){
                $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Rewire, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire)
                values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd')");
            
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


                if($product == "Furniture_work"){
                    $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Furniture_work, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire)
                    values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd')");
                
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


                    if($product == "Generator_repairer"){
                        $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Generator_repairer, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire)
                        values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd')");
                    
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

                        if($product == "Phone_repairer"){
                            $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Phone_repairer, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire)
                            values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd')");
                        
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

                            if($product == "Computer_repairer"){
                                $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Computer_repairer, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire)
                                values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd')");
                            
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

                                if($product == "Plumber"){
                                    $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Plumber, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire)
                                    values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd')");
                                
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

                                    if($product == "Hairstylist"){
                                        $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Hairstylist, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire)
                                        values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd')");
                                    
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

                                        if($product == "Painter"){
                                            $save_brand_detailes =  mysqli_query($conn, "insert into brand_register(brand_name, email, password, state, Painter, bank_account_name, bank_name, bank_account_number, phone_number, currency, premium_expire)
                                            values('$brand_name', '$brand_email', '$confirm_password', '$state', '$product', '$bank_account_name', '$bank_name', '$bank_account_number', '$reg_phone_num', '$currency', '$prem_expd')");
                                        
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