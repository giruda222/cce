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
<link rel="stylesheet" href="./vendor/toastr/toastr.min.css">
<link rel="stylesheet"
	href="./vendor/owlcarousel/css/owl.carousel.min.css">
<link rel="stylesheet" href="./css/style.css">

</head>

<body class="dashboard">
	0

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

		<div class="page_title section-padding">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="page_title-content">
							<p>
								Welcome Back, <span> <c:out value="${member}" />
								</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="homepage mb-80">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-lg-8">
					<div class="card profile_chart">
						<div class="card-header">
							<div class="chart_current_data">
								<h3>
									<span>실시간가</span>
								</h3>

								<p class="text-success">
									<span id="fluctate_24H">변동가</span><span id="fluctate_rate_24H">변동률</span>
								</p>
							</div>
							<!-- <div class="duration-option">
										<a class="active" href="#">All time</a> <a href="#">24 H</a> <a
											href="#">7D</a> <a href="#">14D</a> <a href="#">30D</a>
									</div> -->
						</div>
						<div class="card-body pt-0">
							<!-- TradingView Widget BEGIN -->
							<!-- TradingView Widget BEGIN -->
							<div class="tradingview-widget-container">
								<div id="tradingview_72199"></div>
								<div class="tradingview-widget-copyright">
									TradingView 제공 <a
										href="https://kr.tradingview.com/symbols/BITHUMB-BTCKRW/"
										rel="noopener" target="_blank"><span class="blue-text">BTCKRW
											차트</span></a>
								</div>
								<script type="text/javascript"
									src="https://s3.tradingview.com/tv.js"></script>
								<script type="text/javascript">
									window.t = new TradingView.widget({
										"width" : "autosize",
										"height" : 610,
										"symbol" : "BITHUMB:BTCKRW",
										"interval" : "D",
										"timezone" : "Etc/UTC",
										"theme" : "Light",
										"style" : "3",
										"locale" : "kr",
										"toolbar_bg" : "#f1f3f6",
										"enable_publishing" : false,
										"allow_symbol_change" : true,
										"container_id" : "tradingview_72199"
									});
								</script>
							</div>
							<!-- TradingView Widget END -->

						</div>
					</div>
				</div>
					<div class="col-xl-4 col-lg-4">
						<div class="card balance-widget">
							<div class="card-header pb-0 border-0">
								<h4 class="card-title">Your Portfolio</h4>
							</div>
							<div class="card-body pt-0">
								<div class="buy-sell-widget">
									<ul class="nav nav-tabs">
										<li class="nav-item"><a class="nav-link active"
											data-toggle="tab" href="#buy">Buy</a></li>
										<li class="nav-item"><a class="nav-link"
											data-toggle="tab" href="#sell">Sell</a></li>
									</ul>
									<div class="tab-content tab-content-default">
										<div class="tab-pane fade show active" id="buy"
											role="tabpanel">
											<form>
												<div class="form-group">
													<label class="mr-sm-2">Select your currency</label>
													<div class="input-group mb-3">
														<div class="input-group-prepend">
															<label class="input-group-text"><i
																class="cc BTC-alt"></i></label>
														</div>
														<div class="drop-menu form-control">
															<div class="select">
																<span>Select Coin</span> <i class="fa fa-angle-right"></i>
															</div>
															<ul class="dropeddown">
																<li>Bitcoin</li>
																<li>Litecoin</li>
															</ul>
														</div>
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
																<span>Select Account</span> <i class="fa fa-angle-right"></i>
															</div>
															<ul class="dropeddown">
																<li><c:out value="${account.a_bank}" /></li>
															</ul>
														</div>
													</div>
												</div>

												<div class="form-group">
													<label class="mr-sm-2">Enter your amount</label>
													<div class="input-group">
														<input type="text" aria-label="First name"
															class="form-control" value="0.0214 BTC"> <input
															type="text" aria-label="Last name" class="form-control"
															value="125.00 USD">
													</div>
													<div class="d-flex justify-content-between mt-2">
														<p>Monthly Limit</p>
														<h5>$49750 remaining</h5>
													</div>
												</div>

												<div class="form-group">
													<button class="btn btn-success btn-block">현재가구매</button>
												</div>
												<div class="form-group">
													<button class="btn btn-success btn-block">지정가구매</button>
												</div>

											</form>
										</div>
										<div class="tab-pane fade" id="sell">
											<form>
												<div class="form-group">
													<label class="mr-sm-2">Select your currency</label>
													<div class="input-group mb-3">
														<div class="input-group-prepend">
															<label class="input-group-text"><i class="cc BTC"></i></label>
														</div>
														<div class="drop-menu form-control">
															<div class="select">
																<span>Select Coin</span> <i class="fa fa-angle-right"></i>
															</div>
															<ul class="dropeddown">
																<li>Bitcoin</li>
																<li>Litecoin</li>
															</ul>
														</div>
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
																<span>Select Account</span> <i class="fa fa-angle-right"></i>
															</div>
															<input type="hidden" name="gender">
															<ul class="dropeddown">
																<li>Bank of America ********45845</li>
																<li>Master Card ***********5458</li>
															</ul>
														</div>
													</div>
												</div>

												<div class="form-group">
													<label class="mr-sm-2">Enter your amount</label>
													<div class="input-group">
														<input type="text" aria-label="First name"
															class="form-control" value="0.0214 BTC"> <input
															type="text" aria-label="Last name" class="form-control"
															value="125.00 USD">
													</div>
													<div class="d-flex justify-content-between mt-2">
														<p>Monthly Limit</p>
														$49750 remaining
													</div>
												</div>

												<div class="form-group">
													<button class="btn btn-success btn-block">현재가판매</button>
												</div>
												<div class="form-group">
													<button class="btn btn-success btn-block">지정가판매</button>
												</div>
											</form>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-9 col-lg-9">
						<div class="card">
							<div class="card-header border-0 pb-0">
								<h4 class="card-title">Recent Activities</h4>
								<a href="#">View More </a>
							</div>
							<div class="card-body">
								<div class="transaction-table">
									<div class="table-responsive">
										<table class="table mb-0 table-responsive-sm">
											<tbody>
												<tr>
													<td><span class="sold-thumb"><i
															class="la la-arrow-down"></i></span></td>

													<td><span class="badge badge-danger">Sold</span></td>
													<td><i class="cc BTC"></i> Bitcoin</td>
													<td>Using - Bank *******5264</td>
													<td class="text-danger">-0.000242 BTC</td>
													<td>-0.125 USD</td>
												</tr>
												<tr>
													<td><span class="buy-thumb"><i
															class="la la-arrow-up"></i></span></td>
													<td><span class="badge badge-success">Buy</span></td>
													<td><i class="cc LTC"></i> Litecoin</td>
													<td>Using - Card *******8475</td>
													<td class="text-success">-0.000242 BTC</td>
													<td>-0.125 USD</td>
												</tr>
												<tr>
													<td><span class="sold-thumb"><i
															class="la la-arrow-down"></i></span></td>
													<td><span class="badge badge-danger">Sold</span></td>
													<td><i class="cc XRP"></i> Ripple</td>
													<td>Using - Card *******8475</td>
													<td class="text-danger">-0.000242 BTC</td>
													<td>-0.125 USD</td>
												</tr>
												<tr>
													<td><span class="buy-thumb"><i
															class="la la-arrow-up"></i></span></td>
													<td><span class="badge badge-success">Buy</span></td>
													<td><i class="cc DASH"></i> Dash</td>
													<td>Using - Card *******2321</td>
													<td class="text-success">-0.000242 BTC</td>
													<td>-0.125 USD</td>
												</tr>
												<tr>
													<td><span class="sold-thumb"><i
															class="la la-arrow-down"></i></span></td>
													<td><span class="badge badge-danger">Sold</span></td>
													<td><i class="cc BTC"></i> Bitcoin</td>
													<td>Using - Card *******2321</td>
													<td class="text-danger">-0.000242 BTC</td>
													<td>-0.125 USD</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3">
						<div class="card apps-download">
							<div class="card-body">
								<h4 class="card-title">Mobile app</h4>
								<div class="apps-download-content">
									<h3>Get the best mobile app to exchange or buy crypto on
										the go:</h3>
									<div class="mt-4 text-center">
										<a href="#" class="btn btn-primary my-1"><img
											src="./images/android.svg" alt=""></a> <a href="#"
											class="btn btn-success my-1"><img
											src="./images/apple.svg" alt=""></a>
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


	</div>



	<script src="./vendor/jquery/jquery.min.js"></script>
	<script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="./vendor/waves/waves.min.js"></script>

	<script src="./vendor/toastr/toastr.min.js"></script>
	<script src="./vendor/toastr/toastr-init.js"></script>

	<script src="./vendor/circle-progress/circle-progress.min.js"></script>
	<script src="./vendor/circle-progress/circle-progress-init.js"></script>


	<!--  flot-chart js -->
	<script src="./vendor/flot/jquery.flot.js"></script>
	<script src="./vendor/flot/jquery.flot.resize.js"></script>


	<script src="./js/dashboard.js"></script>
	<script src="./js/scripts.js"></script>


</body>

	<script src="./js/livecoinprice.js"></script>
	<script type="text/javascript">
		livecoinprice.coin_price();
	</script>
</html>