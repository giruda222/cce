<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Tradient</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="./images/favicon.png">
<!-- Custom Stylesheet -->
<link rel="stylesheet" href="./vendor/waves/waves.min.css">
<link rel="stylesheet"
	href="./vendor/owlcarousel/css/owl.carousel.min.css">
<link rel="stylesheet" href="./css/style.css">
<style type="text/css">
label.error {
	font-size: 12pt;
	color: red;
	margin-bottom: 0px;
}
</style>



</head>

<body>

	<div id="preloader">
		<div class="sk-three-bounce">
			<div class="sk-child sk-bounce1"></div>
			<div class="sk-child sk-bounce2"></div>
			<div class="sk-child sk-bounce3"></div>
		</div>
	</div>

	<div id="main-wrapper">

		<div class="header">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<nav class="navbar navbar-expand-lg navbar-light px-0">
							<a class="navbar-brand" href="index.html"><img
								src="./images/w_logo.png" alt=""> <span>WillBit</span></a>
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link active"
										href="index.html">Dashboard</a></li>
									<li class="nav-item"><a class="nav-link"
										href="buy-sell.html">Buy/Sell</a></li>
									<li class="nav-item"><a class="nav-link"
										href="accounts.html">Accounts</a></li>
									<li class="nav-item"><a class="nav-link"
										href="settings.html">Settings</a></li>
								</ul>
							</div>
							<div class="dashboard_log">
								<div class="d-flex align-items-center">
									<div class="header_auth">
										<a href="#" id="signinbuttonTop" class="btn btn-success  mx-2">Sign
											In</a> <a href="#" id="signupbuttonTop"
											class="btn btn-outline-primary  mx-2">Sign Up</a>
									</div>
								</div>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>


		<div class="authincation section-padding" id="signup"
			style="display: none">
			<div class="container h-100">
				<div class="row justify-content-center h-100 align-items-center">
					<div class="col-xl-4 col-md-6">
						<div class="auth-form card">
							<div class="card-header justify-content-center">
								<h4 class="card-title">Sign up your account</h4>
							</div>
							<div class="card-body" id="card_body">
								<form id="signup_form">
									<div class="form-group">
										<div class="form-group">
											<label>Email</label> <input type="email" class="form-control"
												placeholder="hello@example.com" id="m_email" name="m_email">
										</div>

										<div class="form-group">
											<label>Password</label> <input type="password"
												class="form-control" placeholder="Password" id="m_password"
												name="m_password">
										</div>
										<div class="form-group">
											<label>Password Confirm</label> <input type="password"
												class="form-control" placeholder="Password Confirm"
												id="m_passwordCon" name="m_passwordCon">
										</div>

										<label>Username</label> <input type="text"
											class="form-control" placeholder="Username" id="m_name"
											name="m_name">
									</div>

									<div class="form-group">
										<label>Phone</label> <input type="text" class="form-control"
											placeholder="010********" id="m_phone" name="m_phone">
									</div>
									<div class="text-center mt-4">
										<button type="submit" id="submit"
											class="btn btn-success btn-block">Sign up</button>
									</div>
								</form>
								<div class="new-account mt-3">
									<p>
										Already have an account? <a class="text-primary" href="#"
											id="signinbuttonBottom">Sign in</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="authincation section-padding" id="signin">
			<div class="container h-100">
				<div class="row justify-content-center h-100 align-items-center">
					<div class="col-xl-4 col-md-6">
						<div class="auth-form card">
							<div class="card-header justify-content-center">
								<h4 class="card-title">Sign in</h4>
							</div>
							<div class="card-body">
								<form action="signin" id="signin_form"  method="POST">
									<div class="form-group">
										<label>Email</label> <input type="email" class="form-control"
											id="m_email" name="m_email">
									</div>
									<div class="form-group">
										<label>Password</label> <input type="password" id="m_password"
											name="m_password" class="form-control">
									</div>
									<div class="form-row d-flex justify-content-between mt-4 mb-2">
										<div class="form-group mb-0">
											<label class="toggle"> <input class="toggle-checkbox"
												type="checkbox">
												<div class="toggle-switch"></div> <span class="toggle-label">Remember
													me</span>
											</label>
										</div>
										<div class="form-group mb-0">
											<a href="reset">Forgot Password?</a>
										</div>
									</div>
									<div class="text-center">
										<button type="submit" class="btn btn-success btn-block"
											name="signinsubmit">Sign in</button>
									</div>
								</form>
								<div class="new-account mt-3">
									<p>
										Don't have an account? <a id="signupbuttonBottom"
											class="text-primary" href="#">Sign up</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="footer">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-xl-6 col-md-6">
						<div class="copy_right">Copyright Â© 2019 Quixlab. All
							Rights Reserved.</div>
					</div>
					<div class="col-xl-6 col-md-6 text-lg-right text-center">
						<div class="social">
							<a href="#"><i class="fa fa-youtube-play"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-facebook"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="bg_icons"></div>

	<script src="./vendor/jquery/jquery.min.js"></script>
	<script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="./vendor/waves/waves.min.js"></script>
	<script src="./js/scripts.js"></script>
	<script src="./js/jquery.validate.js"></script>
	<script src="./js/additional-methods.js"></script>
	<script src="./js/localization/messages_ko.js"></script>
	
	<script src="./js/member.js"></script>
	
	<script type="text/javascript">
		member.signinbutton();
		member.signup();
		member.signupbuttonTop();
		member.signupbuttonBottom();
		member.signinbuttonTop();
		member.signinbuttonBottom();
	</script>
</body>

</html>