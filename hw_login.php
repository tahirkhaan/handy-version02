<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
 <title>Login Handworker</title>
      <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" type="text/css" href="css/main.css">
      <link rel="stylesheet" type="text/css" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="jquery-3.2.0.min.js"></script>
</head>
<body style="margin:0px;">
<div class="container-fluid">
   <div class="row">
   <div class="col-sm-12" style="background-color: #000000;">
<ul id="menu_login" class="list-inline" style="display: inline-block;  color: white; font-family: 'proxima-nova', sans-serif;">
	<li>Home</li>
	<li>What We Offer</li>
	<li>Why Us</li>
	<li>Our Charges</li>
	<li>Contact</li>
</ul>
<ul id="menu-right" class="pull-right list-inline" style="font-family: 'proxima-nova', sans-serif;">
<li style="background-color: currentColor;"><a href="#">Login</a></li>
<li style="background-color: currentColor;"><a href="signup_handworker.php">Register</a></li>		
</ul>
	</div>
	</div>
</div>
<div class="container-fluid" style="height: auto; background-color: transparent; border: 2px solid white; border-radius: 50px; padding-bottom: 20px;">
  <div class="logo" style="padding-top: 15px;">
      <div class="container">
              <h1 style="font-size: 36px; font-weight: bolder; ">Handworker at Your Door Step</h1>
              <p style="    font-family: arial;color: #034178;font-weight: bold;font-size: 17px;letter-spacing: 2px; padding-left: 17px; ">The new way to Hire Handworker </p>
              </div>
                      </div>

</div>



<div class="container-fluid" style="background-image: url(img/hand.jpg);">
	
		<div class="row" style="padding-top: 80px; padding-bottom: 60px;">
			<div class="col-md-3">
				
			</div>
			<div class="col-md-6 box" style= "height: 400px; border: 1px solid gray; background-color: transparent;">
			<div class="row">
				<div class="col-md-12" style="background-color: currentColor;">
					<center><h2 style="color: white;">Login Handworker</h2></center>
				</div>
				</div>
				<form method="POST" action="login_hw/login_hw.php">
				<div class="text" style="padding-top: 30px;">
					<?php 

                if(isset($_SESSION['errorMsg']))
                     {
                        echo $_SESSION['errorMsg'];
                     }
                ?>
					<center><span style="color: white;"> UserName </span></center>
				</div>
				<div class="form-group">
					<label for="inputdefault"></label>
    				<input name="user_name" class="form-control" id="inputdefault" type="text">
				</div>
				<div class="password" style="padding-top: 20px;">
					<center><span style="color: white;" >Password</span></center>
				</div>
				<div class="form-group">
					<label for="pwd"></label>
  					<input name="user_pass" type="password" class="form-control" id="pwd">
				</div>
				<p style="color: white;">Forgot Password?<a href="">Click Here</a></p>
				<p style="color: white;">Dont have an account yet?<a href="">Register Now</a></p>
				<center><button type="submit" class="btn" style="background-color: transparent; border: 1px solid white; color: white;">Login Here </button></center>
				</form>
				<h2>
			
                </h2>
			</div>
			<div class="col-md-3">
				
			</div>
		</div>
</div>

	
<div class="container-fluid" style="background-color: #323232;">
<div class="container">
<div class="col-sm-4">
<h5 style="color: white;padding-top: 34px;font-size: 20px;">Handworker at your door step</h5>
<p style="color: white;">lorium ipusium llorium ipusium lorium ipusium orium ipusium lorium ipusium lorium ipusium lorium ipusium lorium ipusium lorium ipusium lorium ipusium lorium ipusium lorium ipusium lorium ipusium lorium ipusium lorium ipusium lorium ipusium lorium ipusium </p>	
<div class="social" style="color: white;">
	<h6 style="color: white; padding-top: 25px;">Connect with us</h6>
	<p><i class="fa fa-facebook" aria-hidden="true"></i>
	<i class="fa fa-twitter" aria-hidden="true"></i>
	<i class="fa fa-google" aria-hidden="true"></i>
	<i class="fa fa-linkedin" aria-hidden="true"></i>
	</p>
</div>
</div>
<div class="col-sm-4" style="color: white; padding-left: 126px;">
	<h5 style="padding-top: 34px;font-size: 20px;">About Us</h5>
	<ul class="link" style="list-style: none;padding: 0px;">
		<li>Home</li>
		<li>About US</li>
		<li>Terms of Use</li>
		<li>Privacy Policy</li>
		<li>Contact Us</li>
	</ul>
</div>
<div class="col-sm-4" style="color: white;">
<h5 style="padding-top: 34px;font-size: 20px;">Powered and Design By:</h5>
<p>Fahad Rashid</p>
<p>Tahir Khan</p>
	
</div>
	
</div>
	
</div>
</body>
</html>