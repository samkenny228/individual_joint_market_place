<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="x-icon" href="../Kehkehaskimage.PNG">
    <title>KehkehAsk</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="mainstyle.css">
    <script type="text/javascript" src="jquery-3.7.1.js"></script>
</head>
<body>
    <div id="forget_password_message"></div>
    <div id="forget_code_message"></div>
    <div id="newpassword_message"></div>
    <div class="container">

        <div class="div_jumbo_login">
        <img src="../Kehkehaskimage.PNG" style="height: 100px; width:100px;">
        <h1 class="reg_heading">Forget your password</h1>

        <form method="post" action="" id="forget_password_form">
            <input type="email" name="forget_password_inp" class="inp_reg_style forget_password_inp" placeholder="Email"><br>
            <button type="submit" name="forget_password_btn" class="btn_reg_submit forget_password_btn"><span id="spin_message"></span>Send code</button>
        </form>

        <div class="div_log"> 
            <a href="register.php" class="log_link">Click here to register </a> <br>
            <a href="login.php" class="log_link">Click here to login </a> <br>
            <a href="tracking_page.php" class="log_link">Click here to track your order </a>
            <a href="../index.php" class="log_link">Home</a><br>
        </div>

        </div>

    </div>

<footer class="reg_footer">
    Get Your Business To Next Level
</footer>

<script src="jsfile/forget_password.js"></script>

</body>
</html>