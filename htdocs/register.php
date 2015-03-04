<?php 
// Get access to the session
if (!isset($_SESSION)) {
	session_start();
}
// This variable will be used to display information about submissions or data changes
$message = "";
// Get access to the model
include 'model.php';
// Get access to the custom functions library
include 'library/functions.php';

// Bring in the View of the MVC pattern
// Check to see if user has already logged in
if (isset($_SESSION['loggedin'])) {
    // User is already logged in so send to home page
	header("Location: home.php");
	die();
} else if (isset($_POST['submited']) && $_POST['submited'] == 'Register') {
    // Add new user to database
	$_SESSION['message'] = registerUser();
	// Got to login page to sign in
	header("Location: login.php");
	die();
// If none of the above then just display the register form.
} else if (isset($_GET['name']) && $_GET['name'] == 'l') {
// Got to login page to sign in
	header("Location: login.php");
	die();
} else { ?>
<!DOCTYPE html>
<!-- This is the View in the MVC pattern -->
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Who Borrowed What | Register</title>
	<!-- <link rel="stylesheet" type="text/css" href="css/who_bowwored_what.css" media="screen" > -->
	<link rel="stylesheet" type="text/css" href="css/normalize.css" media="screen" >
	<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" >
</head>
<body>
	<header class="main_nav">
		<a href="index.php" id="logo">Who Borrowed What?</a>
	</header>
	<div class="center">
		<div class="module-wrapper steps">
			<div class="module">
				<h2 class="center">So Easy!</h2>
				<ol>
					<li>Login</li>
					<li>View Active Transactions</li>
					<li>Make A New Transaction</li>
				</ol>
			</div>
		</div>
		<div class="module-wrapper login register">
			<div class="module center">
				<h2>Register</h2>
				<form action="register.php" method="POST" class='newTransaction' >
					<div class="horizontal">
						<div class="left">
							<label for='name_first'>First Name:</label>
							<input required type='text' name='name_first' id='name_first'>

							<label for='name_last'>Last Name:</label>
							<input required type='text' name='name_last' id='name_last'>

							<label for='email'>Email:</label>
							<input required type='email' name='email' id='email'>

							<label for='phone_number'>Phone Number</label>
							<input type='text' name='phone_number' placeholder='(123) 456-7890'>

							<label for='password'>Password:</label>
							<input required type='password' name='password' >

							<label for='password_confirm'>Confirm Password:</label>
							<input required type='password' name='password_confirm' >	
						</div>
					</div>
					<div class="center login-submit">
						<a class='button sign-button' href='?name=l'>Login</a>
						<input required type="submit" value="Register" name="submited">
					</div>
				</form>
			</div>
		</div>
	</div>
	<footer>
		<span>© 2015 WhoBorrowedWhat.com, All Rights Reserved</span>
	</footer>
</body>
</html>
<?php
}
?>