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
</head>

<body class="dashboard">

	<div id="preloader">
		<div class="sk-three-bounce">
			<div class="sk-child sk-bounce1"></div>
			<div class="sk-child sk-bounce2"></div>
			<div class="sk-child sk-bounce3"></div>
		</div>
	</div>

	<div id="main-wrapper">

		<div class="header dashboard">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<nav class="navbar navbar-expand-lg navbar-light px-0">
							<a class="navbar-brand" href="index.html"><img
								src="./images/w_logo.png" alt=""></a>
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="index.html">Dashboard</a>
									</li>
									<li class="nav-item"><a class="nav-link"
										href="buy-sell.html">Buy/Sell</a></li>
									<li class="nav-item"><a class="nav-link"
										href="accounts.html">Accounts</a></li>
									<li class="nav-item"><a class="nav-link"
										href="settings.html">Settings</a></li>
								</ul>
							</div>
							<div class="dashboard_log my-2">
								<div class="d-flex align-items-center">
									<div class="account_money">
										<ul>
											<li class="crypto"><span>0.0025</span> <i
												class="cc BTC-alt"></i></li>
											<li class="usd"><span>19.93 USD</span></li>
										</ul>
									</div>
									<div class="profile_log dropdown">
										<div class="user" data-toggle="dropdown">
											<span class="thumb"><i class="la la-user"></i></span> <span
												class="name">Maria Pascle</span> <span class="arrow"><i
												class="la la-angle-down"></i></span>
										</div>
										<div class="dropdown-menu dropdown-menu-right">
											<a href="accounts.html" class="dropdown-item"> <i
												class="la la-user"></i> Account
											</a> <a href="history.html" class="dropdown-item"> <i
												class="la la-book"></i> History
											</a> <a href="settings.html" class="dropdown-item"> <i
												class="la la-cog"></i> Setting
											</a> <a href="lock.html" class="dropdown-item"> <i
												class="la la-lock"></i> Lock
											</a> <a href="index.html" class="dropdown-item logout"> <i
												class="la la-sign-out"></i> Logout
											</a>
										</div>
									</div>
								</div>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>





		<div class="verification section-padding">
			<div class="container h-100">
				<div class="row justify-content-center h-100 align-items-center">
					<div class="col-xl-4 col-md-6">
						<div class="auth-form card">
							<div class="card-header">
								<h4 class="card-title">Link a Debit card</h4>
							</div>
							<div class="card-body">
								<form action="verify-step-2.html" class="identity-upload">
									<div class="identity-content">
										<span class="icon"><i class="fa fa-shield"></i></span>
										<h4>Please verify your identity before adding your card</h4>
										<p>Uploading your ID helps as ensure the safety and
											security of your founds</p>
									</div>

									<div class="text-center">
										<button type="submit" class="btn btn-success pl-5 pr-5">Upload
											ID</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div id="footer">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_footer.jsp" />
			<!-- include_common_top.jsp end-->
		</div>
	</div>

	<div class="bg_icons"></div>



	<script src="./vendor/jquery/jquery.min.js"></script>
	<script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="./vendor/waves/waves.min.js"></script>
	<script src="./js/scripts.js"></script>
</body>

</html>