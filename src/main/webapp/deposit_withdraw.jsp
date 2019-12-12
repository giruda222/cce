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
<link rel="stylesheet" href="./css/min.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

	




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

	

		<div class="accounts mb-80">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-8">
						<div class="container">
							<div class="row">
								<div class="col-xl-12">
									<div class="card">
										<div class="card-header row">
											<h4 class="card-title">총 보유자산</h4>
											<h2 class="card-title align-right">3,732,171</h2>
											<span class=align-right>KRW</span>
										</div>
										<div class="card-body">
											<div class="transaction-table">
												<div class="table-responsive">
													<form action="">
														<div class="form-group">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<label class="input-group-text"><i
																		class="fa fa-money"></i></label>
																</div>
																<input type="text" class="form-control"
																	placeholder="5000 USD">
															</div>
														</div>
														<div class="form-group">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<label class="input-group-text"><i
																		class="fa fa-bank"></i></label>
																</div>
																<div class="drop-menu form-control">
																	<div class="select">
																		<span>Select Account</span> <i
																			class="fa fa-angle-right"></i>
																	</div>
																	<ul class="dropeddown">
																		<li>Bank of America ********45845</li>
																		<li>Master Card ***********5458</li>
																	</ul>
																</div>
															</div>
														</div>

														<button class="btn btn-primary btn-block">Withdraw
															Now</button>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>




					<div class="col-xl-6 col-lg-6 col-md-8">
						<div class="container">
							<div class="row">
								<div class="col-xl-12">
									<div class="card">
										<div class="card">

											<div class="card-body">
												<div class="buy-sell-widget">
													<ul class="nav nav-tabs">
														<li class="nav-item"><a class="nav-link active"
															data-toggle="tab" href="#buy">Deposit</a></li>
														<li class="nav-item"><a class="nav-link"
															data-toggle="tab" href="#sell">Withdraw</a></li>
													</ul>
													<div class="tab-content tab-content-default">
														<div class="tab-pane fade show active" id="buy"
															role="tabpanel">
															
															
															
															<label class="mr-sm-2">Virtual Account</label>
															
															<span class="input-group-text"><c:out value="${account.a_va}"/></span>
															
															
															<form>
																<div class="form-group">
																	<label class="mr-sm-2">Select your currency</label>
																	<div class="input-group mb-3">
																		<div class="input-group-prepend">
																			<label class="input-group-text"><i
																				class="fa fa-money"></i></label>
																		</div>
																		<input type="text" class="form-control"
																			placeholder="5000 USD">
																	</div>
																</div>

																<div class="form-group">
																	<label class="mr-sm-2">Select Payment Method</label>
																	<div class="input-group mb-3">
																		<div class="input-group-prepend">
																			<label class="input-group-text"><i
																				class="fa fa-bank"></i></label>
																		</div>
																		<div class="drop-menu form-control">
																			<div class="select">
																				<span>Select Account</span> <i
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
																</div>


																<div class="form-group">
																	<button class="btn btn-success btn-block">Deposit</button>
																</div>

															</form>
														</div>
														<div class="tab-pane fade" id="sell">
															<form>
																<div class="form-group">
																	<label class="mr-sm-2">Select your currency</label>
																	<div class="input-group mb-3">
																		<div class="input-group-prepend">
																			<label class="input-group-text"><i
																				class="fa fa-money"></i></label>
																		</div>
																		<input type="text" class="form-control"
																			placeholder="5000 USD">
																	</div>
																</div>
																<div class="form-group">
																	<label class="mr-sm-2">Account number</label>
																	<div class="input-group mb-3">
																		<div class="input-group-prepend">
																			<label class="input-group-text"><i
																				class="fa fa-money"></i></label>
																		</div>
																		<input type="text" class="form-control"
																			placeholder="250111111554874">
																	</div>
																</div>
																<div class="form-group">
																	<label class="mr-sm-2">Select Payment Method</label>
																	<div class="input-group mb-3">
																		<div class="input-group-prepend">
																			<label class="input-group-text"><i
																				class="fa fa-bank"></i></label>
																		</div>
																		<div class="drop-menu form-control">
																			<div class="select">
																				<span>Select Account</span> <i
																					class="fa fa-angle-right"></i>
																			</div>
																			<input type="hidden" name="gender">
																			<ul class="dropeddown">
																				<li>국민은행</li>
																				<li>신한은행</li>
																				<li>우리은행</li>
																				<li>KEB하나은행</li>
																				<li>농협은행</li>
																			</ul>
																		</div>
																	</div>
																</div>



																<div class="form-group">
																	<button class="btn btn-success btn-block">WithDraw</button>
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
</body>

</html>