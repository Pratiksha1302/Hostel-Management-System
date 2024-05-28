<?php
session_start();
include('includes/config.php');
date_default_timezone_set('Asia/Kolkata');
include('includes/checklogin.php');
check_login();


// Database connection parameters
$servername = "localhost"; // Change this to your servername
$username = "root"; // Change this to your database username
$password = ""; // Change this to your database password
$dbname = "hostel"; // Change this to your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    // Display an error message and provide a way to retry
    die("Connection failed: " . $conn->connect_error);
}
/*
$email = $_SESSION['email'];
$stmt = $mysqli->prepare("SELECT email FROM users WHERE email = ?");
$stmt->bind_param("i", $email);
$stmt->execute();
$stmt->bind_result($email);
$stmt->fetch();
$stmt->close();*/
?>
<!DOCTYPE html>
<html lang="en"  class="no-js">
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Profile Updation</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<?php include('includes/header.php');?>
<div class="ts-main-content">
<?php include('includes/sidebar.php');?>
<div class="content-wrapper">
			<div class="container-fluid">  
            <div class="row">
					<div class="col-md-12">
            <h2 class="page-title">&nbsp;Email Verification </h2>
            <div class="row">
							<div class="col-md-10">
								<div class="panel panel-primary">
									<div class="panel-heading">

Verify Email : &nbsp; 
</div>
<div class="panel-body"> 

    <form action="verify_otp.php"  method="post" class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">Enter Email:</label>
        <div class="col-sm-10">
            <input type="email" name="email" placeholder="Enter your email" class="form-control"  required="required">
        </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">Enter OTP:</label>
    <div class="col-sm-10">
        <input type="text" name="otp" placeholder="Enter One Time Password" class="form-control"  required="required" ><br>
</div>
</div>   
<div class="col-sm-3 control-label">
      
</div>  
<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">Verify OTP</button>
            <a href="javascript:history.back()" class="btn btn-default">Cancel</a>
        </div>
    </div>
    <div id="response" style="margin-top: 20px;"></div>
</form>

<?php $message = '';
 if ($message): ?>
								<script>
									alert('<?php echo $message; ?>');
									window.location.href = 'verifyotp.php'; // Change this to the correct path
								</script>
								<?php endif; ?>



    </div>
    </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
       
    
        <script>/*
        document.getElementById('otpForm').addEventListener('submit', function (e) {
            e.preventDefault();
            var formData = new FormData(this);
            fetch('send_email.php', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                document.getElementById('response').textContent = data.message;
            })
            .catch(error => console.error('Error:', error));
        });
    </script>*/
<script>
    document.getElementById('otpForm').addEventListener('submit', function (e) {
        e.preventDefault();
        var formData = new FormData(this);
        fetch('verify_otp.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            alert(data.message);  // Display alert with the response message
            location.reload();    // Reload the page
        })
        .catch(error => console.error('Error:', error));
    });

    function resetForm() {
        document.getElementById('otpForm').reset();
        document.getElementById('response').textContent = '';
    }
</script>

</body>



</html>