<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#account_frm').on("submit", function(e) {
			$('#a_bank').val($('#result').text());
		
		});
	});
</script>



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

		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_top.jsp" />
			<!-- include_common_top.jsp end-->
		</div>

	<p>oioioioioioioi</p>

		<div class="verification section-padding mb-80">
			<div class="container h-100">
				<div
					class="row justify-content-center h-100 align-items-center  my-5">
					<div class="col-xl-4 col-md-6">
						<div class="auth-form card">
							<div class="card-header">
								<h4 class="card-title">Link a bank account</h4>
							</div>
							<div class="card-body">
								<form id="account_frm" action="insertAccount" class="identity-upload">
									<input type="hidden" name="a_bank" id="a_bank">
									<div class="form-row">
										<div class="form-group col-xl-12 mg">
											<label class="mr-sm-2">Bank name </label>
											<div class="drop-menu form-control">
												<div class="select">
													<span id="result">Select</span> <i
														class="fa fa-angle-right"></i>
												</div>
												<ul class="dropeddown">
													<li>국민은행</li>
													<li>신한은행</li>
													<li>우리은행</li>
													<li>KEB하나은행</li>
													<li>농협은행</li>
												</ul>
											</div>
										</div>


										<div class="form-group col-xl-12">
											<label class="mr-sm-2">Account number </label> <input
												type="number" class="form-control"
												placeholder="3647594432111" name="a_no" id="a_no">
										</div>

										<div class="form-group col-xl-12">
											<label class="mr-sm-2">Full name </label> <input type="text"
												class="form-control" placeholder="홍길동" name="m_name"
												id="m_name">
										</div>


										<div class="text-center col-12">
											<a href="verify-step-5.html" class="btn btn-primary mx-2">Back</a>
											<button type="submit" id="save" class="btn btn-success mx-2">Save</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div id="footer">
			<jsp:include page="include_footer.jsp" />
		</div>
	</div>

	<div class="bg_icons"></div>
</body>

</html>