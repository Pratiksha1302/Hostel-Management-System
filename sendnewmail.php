<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hostel";

$mysqli = new mysqli($servername, $username, $password, $dbname);

if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

require "./phpmailer/src/PHPMailer.php";
require "./phpmailer/src/SMTP.php";
require "./phpmailer/src/Exception.php";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

$send_to_email = $_POST["email"];
$subject = $_POST["subject"];
$role = $_POST["role"];
$body = nl2br($_POST["body"]); // Convert newlines to <br> tags for HTML

// Define email templates for user and admin using HTML
$user_email_template = <<<EOT
<html>
<body>
    <p>Hi User,</p>
    <p>Thank you for your email and your interest in our hostel.</p>
    <p>$body</p>
    <p>Please feel free to reach out if you need any assistance.</p>
    <p>Best regards,<br>Hostel Admin</p>
</body>
</html>
EOT;

$admin_email_template = <<<EOT
<html>
<body>
    <p>Hi Admin,</p>
    <p>I hope this email finds you well.</p>
    <p>$body</p>
    <p>Thank you.</p>
</body>
</html>
EOT;

// Choose email template based on role
if ($role === "user") {
    $email_body = $user_email_template;
} elseif ($role === "admin") {
    $email_body = $admin_email_template;
} else {
    echo "<script type='text/javascript'>
            alert('Invalid role selected.');
        </script>";
    exit; // Exit script if invalid role is selected
}

function sendMail($send_to, $subject, $body) {
    $mail = new PHPMailer(true);
    $mail->isSMTP();
    $mail->SMTPAuth = true;
    $mail->SMTPSecure = "tls";
    $mail->Host = "smtp.gmail.com";
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port = 587;

    $mail->Username = "pratikshagore08@gmail.com";
    $mail->Password = "yfeq nxag wzll etlm";

    $mail->setFrom("pratikshagore08@gmail.com", "Hostel");

    $mail->addAddress($send_to);

    $mail->Subject = $subject;

    $mail->isHTML(true); // Set email format to HTML
    $mail->Body = $body;
    $mail->AltBody = strip_tags($body);

    // Send email
    if ($mail->send()) {
        echo "<script type='text/javascript'>
                alert('Email has been sent successfully.');
                window.location.href = 'newmail.php';
            </script>";
    } else {
        echo "<script type='text/javascript'>
                alert('Email sending failed. Please try again later.');
                window.location.href = 'newmail.php';
            </script>";
    }
}

sendMail($send_to_email, $subject, $email_body);
?>
