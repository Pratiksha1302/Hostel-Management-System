<?php

// Database connection parameters
$servername = "localhost"; // Change this to your servername
$username = "root"; // Change this to your database username
$password = ""; // Change this to your database password
$dbname = "hostel"; // Change this to your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

$message = ''; // Initialize the message variable
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form is submitted with email and OTP for verification
if (isset($_POST["email"]) && isset($_POST["otp"])) {
    // Email and OTP from Form Input
    $email = $_POST["email"];
    $otp = $_POST['otp'];

    // Validate email and OTP input
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
       // echo json_encode(["status" => "error", "message" => "Invalid email format."]);
       
      
echo '<script>alert("Invalid Email Format"); window.location.href = "verify_otp.php";</script>';
// Close connection
       exit;
    }

    if (empty($otp) || !is_numeric($otp) || strlen($otp) !== 5) {
       // echo json_encode(["status" => "error", "message" => "Invalid OTP format."]);
      
       
echo '<script>alert("Invalid OTP Format"); window.location.href = "verify_otp.php";</script>';
// Close connection
       exit;
    }
// Debugging: Output OTP value to check its format and length
echo "Debug: OTP value: " . $otp . "<br>";
    // Check if the provided OTP matches the one in the database for the given email
    $sql = "SELECT otp FROM email WHERE email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();
    
    if ($stmt->num_rows > 0) {
        $stmt->bind_result($stored_otp);
        $stmt->fetch();
         // Debugging: Output stored OTP value to compare with provided OTP
    echo "Debug: Stored OTP value: " . $stored_otp . "<br>";
        // Verify the OTP
        if ($stored_otp == $otp) {
            // OTP is correct
           // echo json_encode(["status" => "success", "message" => "OTP verified successfully."]);
         
          // echo '<script>alert("OTP verified successfully."); window.location.href = "verify_otp.php";</script>';
           echo "<script type='text/javascript'>
           alert('OTP verified successfully.');
           window.location.href = 'my-profile.php';
       </script>";
        } else {
            // OTP is incorrect
            //echo json_encode(["status" => "error", "message" => "Invalid OTP."]);
        
            echo "<script type='text/javascript'>
            alert('Invalid OTP');
            window.location.href = 'verify_otp.php';
        </script>";
            //echo '<script>alert("Invalid OTP"); window.location.href = "verify_otp.php";</script>';
        }
    } else {
        // No user found with the provided email
       // echo json_encode(["status" => "error", "message" => "No user found with the provided email."]);
      
     
       echo '<script>alert("No user found with the provided email"); window.location.href = "verifyotp.php";</script>';
    }

    $stmt->close();
    exit;
}

// No valid action specified in the form submission
/*
echo '<script>
    var confirmation = confirm("Invalid form submission");
    if (confirmation) {
        window.location.href = "verify_otp.php";
    } else {
        // Handle cancel action (navigate back to the same page)
        window.location.href = "verify_otp.php";
    }
</script>';

*/


//echo '<script>alert("Invalid form submission."); window.location.href = "verify_otp.php";</script>';
// Close connection
$conn->close();

?>
