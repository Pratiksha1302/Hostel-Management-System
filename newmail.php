<?php
session_start();

?>
<!DOCTYPE html>
<html lang="en"  class="no-js">
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Profile Updation</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
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
                                <form method="post" action="sendnewmail.php" class="form-horizontal" id="emailForm">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Enter Your Name:</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="username" placeholder="Full name" class="form-control" required="required">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Reciever's Email Address:</label>
                                        <div class="col-sm-10">
                                            <input type="email" name="email" class="form-control" placeholder="Send To... Email ID" required="required">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Enter Subject:</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="subject" class="form-control" placeholder="Enter Subject" required="required">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Role:</label>
                                        <div class="col-sm-10">
                                            <select name="role" class="form-control" required="required">
                                                <option value="user">User</option>
                                                <option value="admin">Admin</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Email Body:</label>
                                        <div class="col-sm-10">
                                            <textarea name="body" class="form-control" placeholder="Enter Email Body" required="required"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <button class="btn btn-default" onclick="resetForm()"type="button">Cancel</button>
                                            <button type="submit" class="btn btn-primary">Send Email</button>
                                        </div>
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
<script>
function resetForm() {
    document.getElementById('emailForm').reset();
}
</script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap-select.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap.min.js"></script>
<script src="js/Chart.min.js"></script>
<script src="js/fileinput.js"></script>
<script src="js/chartData.js"></script>
<script src="js/main.js"></script>

</body>
</html>
