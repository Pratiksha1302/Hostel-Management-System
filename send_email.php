<?php

// To Remove unwanted errors
error_reporting(E_ALL);
ini_set('display_errors', 1);
// Database connection parameters
$servername = "localhost"; // Change this to your servername
$username = "root"; // Change this to your database username
$password = ""; // Change this to your database password
$dbname = "hostel"; // Change this to your database name

// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}



require "./phpmailer/src/PHPMailer.php";
require "./phpmailer/src/SMTP.php";
require "./phpmailer/src/Exception.php";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

// Email From Form Input
$send_to_email = $_POST["email"];


// Generate Random 6-Digit OTP
$verification_otp = random_int(11111, 99999);

// Full Name of User
$send_to_name = $_POST["username"];


// Check if the email already exists in the database
$stmt = $mysqli->prepare("SELECT COUNT(*) FROM email WHERE email = ?");
$stmt->bind_param("s", $send_to_email);
$stmt->execute();
$stmt->bind_result($email_count);
$stmt->fetch();
$stmt->close();

if ($email_count > 0) {
    // Update the OTP if the email exists
    $stmt = $mysqli->prepare("UPDATE email SET otp = ? WHERE email = ?");
    $stmt->bind_param("ss", $verification_otp, $send_to_email);
} else {
    // Insert a new record if the email does not exist
    $stmt = $mysqli->prepare("INSERT INTO email (email, otp) VALUES (?, ?)");
    $stmt->bind_param("ss", $send_to_email, $verification_otp);
}

$stmt->execute();
$stmt->close();
/*
// Save OTP in the database
$stmt = $mysqli->prepare("REPLACE INTO user (email, otp) VALUES (?, ?)");
$stmt->bind_param("ss", $send_to_email, $verification_otp);
$stmt->execute();
*/
function sendMail($send_to, $otp, $name) {
    $mail = new PHPMailer(true);
    $mail->isSMTP();
    $mail->SMTPAuth = true;
    $mail->SMTPSecure = "tls";
    $mail->Host = "smtp.gmail.com";
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port = 587;

    // Enter your email ID
    $mail->Username = "pratikshagore08@gmail.com";
    $mail->Password = "yfeq nxag wzll etlm";

    // Your email ID and Email Title
    $mail->setFrom("pratikshagore08@gmail.com", "Hostel");

    $mail->addAddress($send_to);

    // You can change the subject according to your requirement!
    $mail->Subject = "Account Activation";

    // You can change the Body Message according to your requirement!
  //  $mail->Body = "Hello, {$name}\nYour account registration is successfully done! Now activate your account with OTP {$otp}.";
  $mail->Body = "
    <html>
    <body>
        <p>Hello, {$name}!</p>
        <p>Your request to update your email has been received successfully!</p>
        <p>To complete the update, please use the following OTP:</p>
        <p><strong>{$otp}</strong></p>
        <p><strong>Do Not Share this with Anyone</strong></p>
        <p>Thank you,<br>Hostel Admin</p>
    </body>
    </html>
";  
$mail->AltBody = "Hello, {$name}\nYour request to update your email has been received successfully!\nTo complete the update, please use the following OTP: {$otp}\n\nDo Not Share this with Anyone\nThank you,\nHostel Admin";

  $mail->send();
}

sendMail($send_to_email, $verification_otp, $send_to_name);

// Message to print email success!
// Return a message to the AJAX call
//echo ("OTP has been sent successfully. Please check your email");
//window.location.href = 'verifyotp.php';
echo "<script type='text/javascript'>
        alert('OTP has been sent successfully. Please check your email.');
        window.location.href = 'verifyotp.php';
    </script>";

?>