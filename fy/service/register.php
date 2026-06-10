<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="google-adsense-account" content="ca-pub-6385303503211547">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="x-icon" href="../../Kehkehaskimage.PNG">
    <title>KehkehAsk</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="mainstyle.css">
    <script type="text/javascript" src="jquery-3.7.1.js"></script>
</head>
<body>

    <div id="reg_message"></div>

    <div class="container">

        <div class="div_jumbo">
        <img src="../../Kehkehaskimage.PNG" style="height: 100px; width:100px;">
            <h1 class="reg_heading">Register as a service seller</h1>
        <form method="post" action="" class="reg_form">
            <input type="text" name="reg_brand_name" class="inp_reg_style reg_brand_name" placeholder="Brand Name - shorter name" required><br>
            <input type="email" name="reg_email" class="inp_reg_style reg_email" placeholder="Email" required><br>
            <input type="text" name="reg_phone_num" class="inp_reg_style reg_phone_num" placeholder="Phone number" required><br>
            <input type="text" name="bank_account_name" class="inp_reg_style bank_account_name" placeholder="Full Name" required><br>
            <input type="text" name="bank_name" class="inp_reg_style bank_name" placeholder="Bank Name" required><br>
            <input type="text" name="bank_account_number" class="inp_reg_style bank_account_number" placeholder="Bank Account Number" required><br>
            <input type="password" name="reg_password" class="inp_reg_style reg_password" placeholder="Password" required><br>
            <input type="password" name="reg_confirm_password" class="inp_reg_style reg_confirm_password" placeholder="Confirm password" required><br>
            <input type="text" name="reg_state" class="inp_reg_style reg_state" placeholder="state" required><br>
            <select name="reg_currency" class="inp_reg_style reg_product">
            <option value="naira">&#8358;</option>
            <option value="doller">&#36;</option>
            <option value="pound">&#163;</option>
            </select><br>
            <select name="reg_product" class="inp_reg_style reg_product">
        <option value="Other_service">Other service</option>
        <option value="Dry_cleaner">Dry cleaner</option>
        <option value="Mechanic">Mechanic</option>
        <option value="Rewire">Rewire</option>
        <option value="Furniture_work">Furniture work</option>
        <option value="Generator_repairer">Generator repairer</option>
        <option value="Phone_repairer">Phone repairer</option>
        <option value="Computer_repairer">Computer repairer</option>
        <option value="Plumber">Plumber</option>
        <option value="Tailor">Tailor</option>
        <option value="Hairstylist">Hairstylist</option>
        <option value="Painter">Painter</option>
            </select><br>
            <input type="text" name="emc" class="inp_reg_style emc" placeholder="Enter membership Code" required><br>
            <button type="submit" name="reg_btn" class="btn_reg_submit reg_btn">Submit</button>

            <div class="div_log"> 
            <a href="login.php" class="log_link">Click here to login </a> <br>
            <a href="forget_password_page.php" class="log_link">Click here to forget password </a><br>
            <a href="tracking_page.php" class="log_link">Click here to track your order </a><br>
            <a href="../index.php" class="log_link">Home</a><br>
        </div>
        </form>
        </div>




</div>
<div style="height: 60px;"></div>
<footer class="reg_footer">
    Get Your Business To Next Level
</footer>

<script src="jsfile/register.js"></script>

</body>
</html>