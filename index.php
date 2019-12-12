<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login Le Zink</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('assets/images/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
				<form class="login100-form validate-form" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
					<div class="login100-form-avatar">
						<img src="assets/images/avatar-01.jpg" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						John Doe
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>

					<div class="container-login100-form-btn p-t-10">
						<button class="login100-form-btn" type="submit" name="login" onclick="recapVerif()">
							Login
						</button>
					</div>

					<div class="container-login100-form-btn p-t-10">

					<div class="g-recaptcha" data-sitekey="6LeXFMcUAAAAAEgV635IiLnbNe_QzPguIfUlNSja"></div> 

					
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/bootstrap/js/popper.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/js/main.js"></script>
	<script src='https://www.google.com/recaptcha/api.js'></script>
	<script>
	function recapVerif() {
if(grecaptcha && grecaptcha.getResponse().length == 0)
{
     //the recaptcha is checked
	 // Do what you want here

alert("incheckd");	
    redirect("index.php");
return true;
	
} else {
	return false;



}
}

</script>



<?php
if (isset($_POST['login'])){
	if ($_POST['username'] == "admin@gmail.com" && $_POST['pass'] == "0123456789"){

		session_start();
		$_SESSION['login_type'] = "admin";
		$_SESSION['username'] = "Adminstrateur";
		$_SESSION['iduser'] = 1;
		if (recapVerif() == true){
			header('location:core/admin');
		} else {
			header('location:index');
		}
	

		

	}else if ($_POST['username'] == "client@gmail.com" && $_POST['pass'] == "0123456789"){
		session_start();
		$_SESSION['login_type'] = "user";
		$_SESSION['username'] = "Client 1";
		$_SESSION['iduser'] = 1;
		header('location:core/client');

	}



}
?>




</body>
</html>