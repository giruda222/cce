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


		<div class="homepage mb-80">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-lg-8">
						<div class="card profile_chart">
							<div class="card-header">
								<div class="chart_current_data">
									<h3>
										<span id="live">실시간가</span>
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
											href="https://kr.tradingview.com/symbols/BITHUMB-${coin_name}KRW/"
											rel="noopener" target="_blank"><span class="blue-text">BTCKRW
												차트</span></a>
									</div>
									<script type="text/javascript"
										src="https://s3.tradingview.com/tv.js"></script>
									<script type="text/javascript">
										window.t = new TradingView.widget(
												{
													"width" : "autosize",
													"height" : 610,
													"symbol" : "BITHUMB:${coin_name}KRW",
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
									<ul class="nav nav-tabs" id="tabs">
										<li class="nav-item"><a id="buybutton"
											class="nav-link active" data-toggle="tab" href="#">Buy</a></li>
										<li class="nav-item"><a id="sellbutton" class="nav-link"
											data-toggle="tab" href="#" id="sellbutton">Sell</a></li>
									</ul>
									<div class="tab-content tab-content-default">
										<div class="tab-pane fade show active" id="buy"
											role="tabpanel">
											<form id="booking_buy">
												<div class="form-group">

													<input type="hidden" id="p_name" name="p_name"
														value="${coin_name}"> <input type="hidden"
														name="live_price" id="live_price"> <input
														type="hidden" name="b_type" id="b_type">
													<div id="radiogaga">
														<input type='radio' name='selectRadio' id='jj' value='jj'
															checked="checked" /> 지정가 <input type='radio'
															name='selectRadio' value='sj' style="margin-left: 45px" />
														시장가 <input type='radio' name='selectRadio' value='yj'
															style="margin-left: 45px" /> 예약 - 지정가<br>
													</div>
													<br />
												</div>
												<div class="form-group">
													<label class="mr-sm-2">Virtual Account</label>
													<div class="input-group mb-3">
														<div class="input-group-prepend">
															<span><c:out value="${account.a_bal}" />KRW</span>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="mr-sm-2">Insert order price</label>
													<div class="input-group mb-3">
														<div class="input-group-prepend"></div>
														<input type="text" class="form-control" id="b_price"
															name="b_price" value="지정가자동입력">
													</div>
												</div>

												<div class="form-group">
													<label class="mr-sm-2">Insert order quantity</label>
													<div class="input-group mb-3">
														<div class="input-group-prepend"></div>
														<input type="text" class="form-control" id="b_quantity"
															name="b_quantity" placeholder="0.000123 BTC">
													</div>
												</div>
												<div class="form-group">
													<label class="mr-sm-2">Insert order total amount</label>
													<div class="input-group mb-3">
														<div class="input-group-prepend"></div>
														<input type="text" class="form-control" id="b_orderPrice"
															name="b_orderPrice" placeholder="50000 KRW">
													</div>
												</div>
											</form>
											<div class="form-group">
												<button class="btn btn-success btn-block" id="ms">매수</button>
											</div>



										</div>
										<div class="tab-pane fade show active" id="sell"
											style="display: none;" role="tabpanel">
											<form id="booking_sell">
												<div class="form-group">

													<input type="hidden" id="p_name" name="p_name"
														value="${coin_name}"> <input type="hidden"
														name="live_price" id="live_price"> <input
														type="hidden" name="b_type" id="b_type">
													<div>
														<input type='radio' name='selectRadio' id="jj" value='jj'
															checked="checked" /> 지정가 <input type='radio'
															name='selectRadio' id="selectRadio" value='sj'
															style="margin-left: 45px" /> 시장가 <input type='radio'
															name='selectRadio' id="selectRadio" value='yj'
															style="margin-left: 45px" /> 예약 - 지정가<br>
													</div>
													<br />
												</div>
												<div class="form-group">
													<label class="mr-sm-2">Virtual Account</label>
													<div class="input-group mb-3">
														<div class="input-group-prepend">
															<span><c:out value="${account.a_bal}" />KRW</span>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="mr-sm-2">Insert order price</label>
													<div class="input-group mb-3">
														<div class="input-group-prepend"></div>
														<input type="text" class="form-control" id="b_price"
															name="b_price" value="지정가자동입력">
													</div>
												</div>

												<div class="form-group">
													<label class="mr-sm-2">Insert order quantity</label>
													<div class="input-group mb-3">
														<div class="input-group-prepend"></div>
														<input type="text" class="form-control" id="b_quantity"
															name="b_quantity" placeholder="0.000123 BTC">
													</div>
												</div>
												<div class="form-group">
													<label class="mr-sm-2">Insert order total amount</label>
													<div class="input-group mb-3">
														<div class="input-group-prepend"></div>
														<input type="text" class="form-control" id="b_orderPrice"
															name="b_orderPrice" placeholder="50000 KRW">
													</div>
												</div>
											</form>
											<div class="form-group">
												<button class="btn btn-success btn-block" id="md">매도</button>
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


	</div>

	<p>${coin_name}</p>
</body>
<!-- 
<script src="./js/livecoinprice.js"></script>
 -->
<script type="text/javascript">
	livecoinprice = {

		coin_price : function() {
			function numberWithCommas(x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
			setInterval(
					function() {
						$
								.ajax({
									url : "https://api.bithumb.com/public/ticker/${coin_name}_KRW",
									method : 'GET',
									dataType : 'json',
									success : function(jsonObject) {
										var nJsonObject = jsonObject;
										var trade_price = numberWithCommas(nJsonObject.data.closing_price);
										$(
												".chart_current_data h3 span:nth-child(1)")
												.html(trade_price + ' KRW');
										$("#buy #live_price").val(
												nJsonObject.data.closing_price);
										$("#sell #live_price").val(
												nJsonObject.data.closing_price);

										var fluctate_24H = nJsonObject.data.fluctate_24H;
										$(".text-success span:nth-child(1)")
												.html(fluctate_24H + ' KRW');

										var fluctate_rate_24H = nJsonObject.data.fluctate_rate_24H;
										$(".text-success span:nth-child(2)")
												.html(
														"(" + fluctate_rate_24H
																+ " %)");

										if (!fluctate_24H.match(/-.*/)) {
											$("#fluctate_24H").css({
												"color" : "green"
											});
											$("#fluctate_rate_24H").css({
												"color" : "green"
											});
										} else if (fluctate_24H.match(/-.*/)) {
											$("#fluctate_24H").css({
												"color" : "red"
											});
											$("#fluctate_rate_24H").css({
												"color" : "red"
											});

										} else if (fluctate_24H.match(0)) {
											$("#fluctate_24H").css({
												"color" : "black"
											});
											$("#fluctate_rate_24H").css({
												"color" : "black"
											});
										}

									}
								});
					}, 1000);

		},

		set_price : function() {
			function numberWithCommas(x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}

			$
					.ajax({
						url : "https://api.bithumb.com/public/ticker/${coin_name}_KRW",
						method : 'GET',
						dataType : 'json',
						success : function(jsonObject) {
							var nJsonObject = jsonObject;
							var trade_price = numberWithCommas(nJsonObject.data.closing_price);

							$("#buy #b_price").val(trade_price);
							$("#sell #b_price").html(trade_price);

						}
					});

		},
		change_tabs : function() {

			function numberWithCommas(x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}

			$("#buybutton")
					.on(
							"click",
							function() {

								$
										.ajax({
											url : "https://api.bithumb.com/public/ticker/${coin_name}_KRW",
											method : 'GET',
											dataType : 'json',
											success : function(jsonObject) {
												var nJsonObject = jsonObject;
												var trade_price = numberWithCommas(nJsonObject.data.closing_price);
												$("#buy #b_price").val(
														trade_price);

												$("#buy").show();
												$("#sell").hide();
												$("#buy #jj").prop("checked",
														true);
											}
										});

							})

			$("#sellbutton")
					.on(
							"click",
							function() {

								$
										.ajax({
											url : "https://api.bithumb.com/public/ticker/${coin_name}_KRW",
											method : 'GET',
											dataType : 'json',
											success : function(jsonObject) {
												var nJsonObject = jsonObject;
												var trade_price = numberWithCommas(nJsonObject.data.closing_price);
												$("#sell #b_price").val(
														trade_price);

												$("#sell").show();
												$("#buy").hide();

												$("#sell #jj").prop("checked",
														true);
											}
										});

							})

		},
		radioEvent : function() {
			function numberWithCommas(x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
			$("#buy input:radio[name=selectRadio]")
					.on(
							"click",
							function() {

								$
										.ajax({
											url : "https://api.bithumb.com/public/ticker/${coin_name}_KRW",
											method : 'GET',
											dataType : 'json',
											success : function(jsonObject) {
												var nJsonObject = jsonObject;
												var trade_price = numberWithCommas(nJsonObject.data.closing_price);
												var selectRadio = $(
														"#buy input:radio[name=selectRadio]:checked")
														.val();

												if (selectRadio == 'jj') {

													$("#buy #b_price").val(
															trade_price);

												} else if (selectRadio == 'sj') {
													var resultPrice = parseInt(nJsonObject.data.closing_price);
													$("#buy #b_price")
															.val(
																	numberWithCommas(resultPrice + 1000));

												} else if (selectRadio == 'yj') {

												}
											}
										});
							}

					)

			$("#sell input:radio[name=selectRadio]")
					.on(
							"click",
							function() {

								$
										.ajax({
											url : "https://api.bithumb.com/public/ticker/${coin_name}_KRW",
											method : 'GET',
											dataType : 'json',
											success : function(jsonObject) {
												var nJsonObject = jsonObject;
												var trade_price = numberWithCommas(nJsonObject.data.closing_price);
												var selectRadio = $(
														"#sell input:radio[name=selectRadio]:checked")
														.val();

												if (selectRadio == 'jj') {

													$("#sell #b_price").val(
															trade_price);

												} else if (selectRadio == 'sj') {
													var resultPrice = parseInt(nJsonObject.data.closing_price);
													$("#sell #b_price")
															.val(
																	numberWithCommas(resultPrice - 1000));

												} else if (selectRadio == 'yj') {

												}
											}
										});
							}

					)

		}

	}
</script>
<script src="./js/current_price_request.js"></script>
<script type="text/javascript">
	livecoinprice.coin_price();
	livecoinprice.set_price();
	current_price_request.calculateTotalQuantity();
	current_price_request.calculatTotalAmount();
	current_price_request.buy();
	current_price_request.sell();
	livecoinprice.change_tabs();
	livecoinprice.radioEvent();
</script>
</html>