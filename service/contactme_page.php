<?php 
include("header.php");
?>
<div id="contact_us_message"></div>

<div class="container">


<div class="div_jumbo">
<h3 class="reg_heading">Contact us</h3>
<form method="post" action="" class="contact_us_form" enctype="multipart/form-data">
    <input type="text" name="full_name" class="inp_reg_style full_name" placeholder="Enter full name"><br>
    <input type="text" name="phone_number" class="inp_reg_style phone_number" placeholder="Enter phone number"><br>
    <input type="text" name="email_address" class="inp_reg_style email_address" placeholder="Enter your email address"><br>
    <textarea type="text" name="contact_us_message" class="inp_reg_style contact_us_message" placeholder="Enter your message"></textarea><br>
    <button type="submit" name="send_contact_us_message" class="btn_reg_submit send_contact_us_message">Send message</button>
</form>
</div>

<div style="height: 60px;"></div>

<!-- <?php if($current_date >= $premium_expire){ ?>
<div>
adds here
</div>
<?php } ?> -->


</div>

<?php 
include("phpfile/sub_prem.php");
?>

<div style="height: 60px;"></div>
<?php 
include("footer.php"); 
?>

<script src="jsfile/contact_us.js"></script>
</body>
</html>