<?php
session_start();
include('includes/config.php');
date_default_timezone_set('Asia/Kolkata');
include('includes/checklogin.php');
check_login();
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
            <h2 class="page-title">&nbsp;Send Email </h2>
            <div class="row">
							<div class="col-md-10">
								<div class="panel panel-primary">
									<div class="panel-heading">

Send Email : &nbsp; 
</div>
<div class="panel-body"> 

    <form action="send_email.php" " method="post" class="form-horizontal">
    <div class="form-group">
        
    <label class="col-sm-2 control-label">Enter Your Name:</label>

        <input type="text" name="username" placeholder="Full name" class="form-control" style="width: 50%;"  required="required"><br>
</div>
        <div class="form-group">  
        <label class="col-sm-2 control-label">New Email Address:</label>

        <input type="email" name="email"  class="form-control" placeholder="Send To... Email ID" style="width: 50%;"  required="required"><br>
</div>
<div class="col-sm-3 control-label">
      
</div>  

<div class="col-sm-6 col-sm-offset-4">
													<button class="btn btn-default" type="submit">Cancel</button>
                                                    <input type="submit" value="Send OTP" class="btn btn-primary">
											</div>


        
<!--
                           OTP Verification Field 
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Enter OTP:</label>
</div>
                                    <input type="text" name="otp" id="otp" class="form-control">
                                    <div class="col-sm-8">
                                </div>
                                </div>
						</div>
                            </div>
     
                       <input type="submit" value="Verify OTP" class="btn btn-primary">
-->
</div>
</form>

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
								</div>
							</div>
						</div>
							</div>
						</div>
					</div>
    <script>
       
        </script>
        <script>
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
    </script>


</body>



</html>