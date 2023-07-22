<?php 
require_once("DBConnection.php"); 
include("functions.php");
session_start();
?>

<?php

 	if (isset($_POST['login'])) {
	 	if (!empty($_POST['username']) && !empty($_POST['password'])) {
	 		$username = mysqli_real_escape_string($conn,$_POST['username']);
	 		$pass = mysqli_real_escape_string($conn,$_POST['password']);

            $login = login($username,$pass,$conn);          
	 	}
	 	else{
		 	echo "Required All fields!";
		} 	
 	}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Online Leave Application</title>
    <style>
        #invalidMsg{
            display:none;
        }
    </style>
</head>
     

<body>

    <!-- header -->
    <nav class="navbar header-nav navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
            <img src="https://www.shrmpro.com/wp-content/uploads/2019/05/Leave-Management-backgound.png" height="50" alt="Logo"/>
            </a>
            <a class="navbar-brand" href="#">Online Leave Application</a>

            <a id="register" href="signup.php">Sign Up</a>
        </div>
    </nav>
    <!-- header ends -->


   

    <!-- body -->
    <div class="container-fluid">
        <div class="row">
            <!-- container and row divs for responsive -->

            <!-- leftComponent -->
            <div class="leftComponent col-md-5">
                <img src="https://datasearchconsulting.com/wp-content/uploads/2020/10/Quitting-a-job-bro.png" alt="Leave Image" class="img-fluid">
            </div>
            <!-- leftComponent ends -->


            <!-- rightComponent -->
            <div class="rightComponent col-md-5">

                <h3 class="h6">Login</h3>
                <hr>
                <form method="POST" class="loginForm">
                <div class="alert alert-danger" id="invalidMsg">
                    <?php      
                        if(isset($_POST['login'])){
                            if($login == false)
                                echo "<script type='text/javascript'>document.getElementById('invalidMsg').style.display = 'block';</script>";
                                echo "Invalid Username or Password";
                        }
                        else
                            echo "";
                    ?>
                    </div>
                    <div class="mb-3">
                        <input class="form-control" type="text" id="username" name="username" placeholder="Enter Username" required>
                    </div>
                    <div class="mb-3">
                        <input class="form-control" type="password" id="password" name="password" placeholder="Enter Password"
                            required>
                    </div>
                    <input type="submit" class="btn btn-success" name="login" value="Log In">
                </form>
            </div>
            <!-- rightComponent ends -->
        </div>
    </div>
    <!-- body ends -->


    <div class="content2">
        <p class="heading lead text-start">
        EasyLeave: Your Online Leave Application Portal
        </p>
        <p class="text-start">
        EasyLeave is a user-friendly and efficient online leave application website designed to simplify the leave management process for organizations of all sizes. With LeaveEase, employees can easily submit leave requests, and managers can efficiently handle and track leave applications in a streamlined manner. This platform is built to enhance productivity, improve transparency, and foster a positive work-life balance within your organization.
        </p>
    </div>

    <footer class="footer navbar navbar-expand-lg navbar-light bg-light" style="color:white;">
    <div>
      <p class="text-center">&copy; <?php echo date("Y"); ?> - Online Leave Application</p>
      <p class="text-center">Developed By Darshan Rana</p>
    </div>
    </footer>
</body>
</html>

<?php
ini_set('display_errors', true);
error_reporting(E_ALL);
?>