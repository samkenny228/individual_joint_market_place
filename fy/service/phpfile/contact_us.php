<?php 
include_once "connectdb.php";
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if(isset($_POST['send_contact_us_message'])){
    $full_name = htmlentities(mysqli_real_escape_string($conn, $_POST['full_name']));
    $phone_number = htmlentities(mysqli_real_escape_string($conn, $_POST['phone_number']));
    $email_address = htmlentities(mysqli_real_escape_string($conn, $_POST['email_address']));
    $contact_us_message = htmlentities(mysqli_real_escape_string($conn, $_POST['contact_us_message']));


$message = 
"Name: "."". $full_name.""."<br>"
.""."Phone number: "."".$phone_number.""."<br>"
.""."Email address: "."".$email_address.""."<br>"
.""."Contact us message: "."".$contact_us_message.""."<br>"
;


require '../phpmailer/src/Exception.php';
require '../phpmailer/src/PHPMailer.php';
require '../phpmailer/src/SMTP.php';

  $mail = new PHPMailer(true);

  $mail->isSMTP();
  $mail->Host = 'smtp.gmail.com';
  $mail->SMTPAuth = true;
  $mail->Username = 'liamj0871@gmail.com';
  $mail->Password = 'bjuf udua wrti rmjo';
  $mail->SMTPSecure = 'ssl';
  $mail->Port = 465;

  $mail->setFrom($_POST['email_address']);

  $mail->addAddress('liamj0871@gmail.com');

  $mail->isHTML(true);

  $mail->Subject = 'Lunomarketplace';
  $mail->Body = $message;

  $mail->send();
  if(!$mail){
    echo "<script>alert('Somthing went wrong try again!')</script>"; 
    exit();
  }

$insert_contact_us_detailes = mysqli_query($conn, "INSERT INTO who_contact_us(full_name, phone_number, email, contact_us_message)
                                                   VALUE('$full_name', '$phone_number', '$email_address', '$contact_us_message', '$brand_unique_id')");
if($insert_contact_us_detailes){
  echo "
  <script> 
  alert('message sent successfull');
  document.location.href = 'index.php';
  </script>
  ";
}
}
?>