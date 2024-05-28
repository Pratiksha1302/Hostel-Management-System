<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

// Check if the session variable is set
if (!isset($_SESSION['login'])) {
    // If not, redirect to the login page
    header("Location: login.php");
    exit();
}

$aid = $_SESSION['login'];
$query = "SELECT * FROM registration WHERE emailid = ? OR regno = ?";
$stmt = $mysqli->prepare($query);

if ($stmt === false) {
    die('Prepare Error: ' . htmlspecialchars($mysqli->error));
}

$stmt->bind_param('ss', $aid, $aid);
$result = $stmt->execute();

if ($result === false) {
    die('Execute Error: ' . htmlspecialchars($stmt->error));
}

$res = $stmt->get_result();
$row = $res->fetch_object();

if (!$row) {
    die('Error: No user found');
}

$imageFileName = $row->profile_image;
$imagePath = 'image/' . $imageFileName; // Assuming images are stored in 'image' folder

// Debugging output
// var_dump($row);
?>

<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="theme-color" content="#3e454c">
    <title>Room Details</title>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-social.css">
    <link rel="stylesheet" href="css/bootstrap-select.css">
    <link rel="stylesheet" href="css/fileinput.min.css">
    <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script language="javascript" type="text/javascript">
        var popUpWin = 0;
        function popUpWindow(URLStr, left, top, width, height) {
            if (popUpWin) {
                if (!popUpWin.closed) popUpWin.close();
            }
            popUpWin = open(URLStr, 'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width=' + 510 + ',height=' + 430 + ',left=' + left + ', top=' + top + ',screenX=' + left + ',screenY=' + top + '');
        }
    </script>
</head>
<body>
    <?php include('includes/header.php');?>

    <div class="ts-main-content">
        <?php include('includes/sidebar.php');?>
        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="row" id="print">
                    <div class="col-md-12">
                        <h2 class="page-title" style="margin-top:3%">Rooms Details</h2>
                        <div class="panel panel-default">
                            <div class="panel-heading">All Room Details</div>
                            <div class="panel-body">
                                <table id="zctb" class="table table-bordered" cellspacing="0" width="100%" border="1">
                                    <span style="float:left"><i class="fa fa-print fa-2x" aria-hidden="true" OnClick="CallPrint(this.value)" style="cursor:pointer" title="Print the Report"></i></span>
                                    <tbody>
                                        <tr>
                                            <td colspan="6" style="text-align:center; color:blue"><h3>Room Related Info</h3></td>
                                        </tr>
                                        <tr>
                                            <th>Registration Number :</th>
                                            <td><?php echo htmlspecialchars($row->regno);?></td>
                                            <th>Apply Date :</th>
                                            <td colspan="3"><?php echo htmlspecialchars($row->postingDate);?></td>
                                        </tr>
                                        <tr>
                                            <td><b>Room no :</b></td>
                                            <td><?php echo htmlspecialchars($row->roomno);?></td>
                                            <td><b>Seater :</b></td>
                                            <td><?php echo htmlspecialchars($row->seater);?></td>
                                            <td><b>Fees PM :</b></td>
                                            <td><?php echo htmlspecialchars($row->feespm);?></td>
                                        </tr>
                                        <tr>
                                            <td><b>Food Status:</b></td>
                                            <td><?php echo $row->foodstatus == 0 ? "Without Food" : "With Food"; ?></td>
                                            <td><b>Stay From :</b></td>
                                            <td><?php echo htmlspecialchars($row->stayfrom);?></td>
                                            <td><b>Duration:</b></td>
                                            <td><?php echo htmlspecialchars($row->duration);?> Months</td>
                                        </tr>
                                        <tr>
                                            <th>Hostel Fee:</th>
                                            <td><?php echo $hf = $row->duration * $row->feespm;?></td>
                                            <th>Food Fee:</th>
                                            <td colspan="3"><?php echo $ff = $row->foodstatus == 1 ? 2000 * $row->duration : 0;?></td>
                                        </tr>
                                        <tr>
                                            <th>Total Fee :</th>
                                            <th colspan="5"><?php echo $hf + $ff;?></th>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="color:red"><h4>Personal Info</h4></td>
                                        </tr>
                                        <tr>
                                            <td><b>Reg No. :</b></td>
                                            <td><?php echo htmlspecialchars($row->regno);?></td>
                                            <td><b>Full Name :</b></td>
                                            <td><?php echo htmlspecialchars($row->firstName) . " " . htmlspecialchars($row->middleName) . " " . htmlspecialchars($row->lastName);?></td>
                                            <td><b>Email :</b></td>
                                            <td><?php echo htmlspecialchars($row->emailid);?></td>
                                        </tr>
                                        <tr>
                                            <td><b>Contact No. :</b></td>
                                            <td><?php echo htmlspecialchars($row->contactno);?></td>
                                            <td><b>Gender :</b></td>
                                            <td><?php echo htmlspecialchars($row->gender);?></td>
                                            <td><b>Course :</b></td>
                                            <td><?php echo htmlspecialchars($row->course);?></td>
                                        </tr>
                                        <tr>
                                            <td><b>Emergency Contact No. :</b></td>
                                            <td><?php echo htmlspecialchars($row->egycontactno);?></td>
                                            <td><b>Guardian Name :</b></td>
                                            <td><?php echo htmlspecialchars($row->guardianName);?></td>
                                            <td><b>Guardian Relation :</b></td>
                                            <td><?php echo htmlspecialchars($row->guardianRelation);?></td>
                                        </tr>
                                        <tr>
                                            <td><b>Guardian Contact No. :</b></td>
                                            <td colspan="6"><?php echo htmlspecialchars($row->guardianContactno);?></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="color:blue"><h4>Addresses</h4></td>
                                        </tr>
                                        <tr>
                                            <td><b>Correspondence Address</b></td>
                                            <td colspan="2">
                                                <?php echo htmlspecialchars($row->corresAddress);?><br />
                                                <?php echo htmlspecialchars($row->corresCIty);?>, <?php echo htmlspecialchars($row->corresPincode);?><br />
                                                <?php echo htmlspecialchars($row->corresState);?>
                                            </td>
                                            <td><b>Permanent Address</b></td>
                                            <td colspan="2">
                                                <?php echo htmlspecialchars($row->pmntAddress);?><br />
                                                <?php echo htmlspecialchars($row->pmntCity);?>, <?php echo htmlspecialchars($row->pmntPincode);?><br />
                                                <?php echo htmlspecialchars($row->pmnatetState);?>    
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Loading Scripts -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script src="js/Chart.min.js"></script>
    <script src="js/fileinput.js"></script>
    <script src="js/chartData.js"></script>
    <script src="js/main.js"></script>
    <script>
        $(function () {
            $("[data-toggle=tooltip]").tooltip();
        });
        function CallPrint(strid) {
            var prtContent = document.getElementById("print");
            var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
            WinPrint.document.write(prtContent.innerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();
        }
    </script>
</body>
</html>
