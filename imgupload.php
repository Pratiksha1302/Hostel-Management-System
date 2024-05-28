<?php
session_start();
include('includes/config.php');
date_default_timezone_set('Asia/Kolkata');
include('includes/checklogin.php');
check_login();
require 'connection.php';

$uploadedImage = ''; // Initialize the variable
if(isset($_POST["submit"])){
  $name = $_POST["name"];
  if($_FILES["image"]["error"] == 4){
    echo
    "<script> alert('Image Does Not Exist'); </script>"
    ;
  }
  else{
    $fileName = $_FILES["image"]["name"];
    $fileSize = $_FILES["image"]["size"];
    $tmpName = $_FILES["image"]["tmp_name"];

    $validImageExtension = ['jpg', 'jpeg', 'png'];
    $imageExtension = explode('.', $fileName);
    $imageExtension = strtolower(end($imageExtension));
    if ( !in_array($imageExtension, $validImageExtension) ){
      echo
      "
      <script>
        alert('Invalid Image Extension');
      </script>
      ";
    }
    else if($fileSize > 1000000){
      echo
      "
      <script>
        alert('Image Size Is Too Large');
      </script>
      ";
    }
    else{
      $newImageName = uniqid();
      $newImageName .= '.' . $imageExtension;

      move_uploaded_file($tmpName, 'img/' . $newImageName);
      
       // Check if the name exists in the database
       $checkQuery = "SELECT * FROM tb_upload WHERE name='$name'";
       $result = mysqli_query($conn, $checkQuery);
 
       if(mysqli_num_rows($result) > 0) {
         // Update the existing record
         $updateQuery = "UPDATE tb_upload SET image='$newImageName' WHERE name='$name'";
         mysqli_query($conn, $updateQuery);
         echo "<script>alert('Image Updated Successfully');</script>";
       } else {
         // Insert a new record
         $insertQuery = "INSERT INTO tb_upload (name,email, image) VALUES('$name', '$email','$newImageName')";
         mysqli_query($conn, $insertQuery);
         echo "<script>alert('Image Uploaded Successfully');</script>";
        }

        $_SESSION['uploaded_image'] = $newImageName; // Store the new image name in session
      }
    }
  }
$uploadedImage = isset($_SESSION['uploaded_image']) ? $_SESSION['uploaded_image'] : '';

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
    <title>Upload Image File</title>
  </head>
  <body>
  <?php include('includes/header.php');?>
<div class="ts-main-content">
<?php include('includes/sidebar.php');?>
<div class="content-wrapper">
			<div class="container-fluid">  
            <div class="row">
					<div class="col-md-12">
            <h2 class="page-title">&nbsp;Upload Profile Image </h2>
            <div class="row">
							<div class="col-md-10">
								<div class="panel panel-primary">
									<div class="panel-heading">

Image Upload : &nbsp; 
</div>
<div class="panel-body"> 
    <form class="" action="" method="post" autocomplete="off" enctype="multipart/form-data">
    <div class="form-group"> 
    <label for="name" class="col-sm-2 control-label">Name : </label>
      <input type="text" name="name" id = "name" required value=""class="form-control" style="width: 50%;"> <br>
      </div>
      <div class="form-group"> 
      <label for="image" class="col-sm-2 control-label">Image : </label>
      <input type="file" name="image" id = "image" accept=".jpg, .jpeg, .png" value="" class="form-control" style="width: 50%;"> <br> <br>
</div>
<div class="col-sm-6 col-sm-offset-4">
      <button type = "submit" name = "submit"class="btn btn-primary">Submit</button>
</div>
    </form>
    <br>
    <br>
    <?php if ($uploadedImage): ?>
                    <h3>Uploaded Image:</h3>
                    <img src="img/<?php echo $uploadedImage; ?>" width="200">
                    <?php unset($_SESSION['uploaded_image']); // Clear the session variable ?>
                    <?php endif; ?>
                    <br>
                  </div>
                </div>
              </div>
            </div>
            <br>
    <br>
    <!--<a href="data.php">View Uploaded Image</a>-->
   
    <br>
   
  </body>
</html>
