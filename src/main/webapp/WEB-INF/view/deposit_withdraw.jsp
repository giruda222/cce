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
	$(function() {
		$('#account_deposit').on("submit", function(e) {
			$('#a_bank').val($('#result').text());
		});

		$('#account_withdraw').on("submit", function(e) {
			$('#a_bank').val($('#result').text());

		});

	});
</script>
<style>
.account_va {
	min-height: 50px;
	padding: 0px 22px;
	font-size: 16px;
	font-weight: 500;
	color: #2F2CD8;
}

#smallFont {
	size: 16px;
}
</style>



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
										<div class="card-header">
											<h4 class="card-title">Current List</h4>
											<h2 class="card-title align-right">
												<input type="hidden" id="live"> <span
													style='color: #2F2CD8;' id="totalAssets">&nbsp;&nbsp;</span>
											</h2>
										</div>
										<div class="card-body">
											<div class="transaction-table">
												<div class="table-responsive">
													<table class="table mb-0 table-responsive-sm">
														<tbody>
															<tr style="text-align: center">

																<td>Produce</td>

																<td>Quantity</td>

																<td>AVG</td>

															</tr>
															<c:forEach var="cbList" items="${cbList}">




																<tr style="text-align: center">


																	<td><c:out value="${cbList.cp.product.p_name}"></c:out></td>

																	<td id="quantity"><c:out
																			value="${cbList.c_quantity}"></c:out></td>

																	<td><c:out value="${cbList.c_avg}"></c:out></td>

																</tr>

															</c:forEach>
														</tbody>
													</table>
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
											<div class="card-header">
												<h4 class="card-title">KRW Withdrawal</h4>
											</div>
											<div class="card-body">
												<div class="coin_list"></div>
												<div class="d-flex justify-content-between mb-3">
													<div class="buyer-info">
														<h4>Total Assets</h4>
													</div>
													<div class="seller-info text-right">
														<h2 class="card-title align-right">
															<span style='color: #2F2CD8;'>${account.a_bal}&nbsp;&nbsp;</span><span
																style='color: #8a8a8a;'>&nbsp;&nbsp;KRW</span>
														</h2>
													</div>
												</div>
												<div class="d-flex justify-content-between mb-3">
													<div class="buyer-info">
														<h5>Trade panding</h5>
													</div>
													<div class="seller-info text-right">
														<h5 class="align-right">
															<span style='color: #2F2CD8;'>${account.a_bal}&nbsp;&nbsp;</span><span
																style='color: #8a8a8a;'>&nbsp;&nbsp;KRW</span>
														</h5>
													</div>
												</div>
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




															<form id="account_deposit">
																<div class="form-group">
																	<label class="mr-sm-2">Virtual Account</label>
																	<div class="input-group mb-3">
																		<div class="input-group-prepend">
																			<span><c:out value="${account.a_va}" /></span>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="mr-sm-2">Insert the deposit
																		amount</label>
																	<div class="input-group mb-3">
																		<div class="input-group-prepend">
																			<label class="input-group-text"><i
																				class="fa fa-money"></i></label>
																		</div>
																		<input type="text" class="form-control"
																			id="b_orderPrice" name="b_orderPrice"
																			placeholder="5000 KRW">
																	</div>
																</div>
																<input type="hidden">
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
															<form id="account_withdraw" action="withdraw">
																<div class="form-group">
																	<label class="mr-sm-2">Insert the withdraw
																		amount</label>
																	<div class="input-group mb-3">
																		<div class="input-group-prepend">
																			<label class="input-group-text"><i
																				class="fa fa-money"></i></label>
																		</div>
																		<input type="text" class="form-control"
																			id="b_orderPrice" name="b_orderPrice"
																			placeholder="5000 KRW">
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
																<input type="hidden">
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
<script type="text/javascript">
	accounts = {
		coin_price : function() {
			function numberWithCommas(x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
			setInterval(
					function() {
						$
								.ajax({
									url : "https://api.bithumb.com/public/ticker/BTC_KRW",
									method : 'GET',
									dataType : 'json',
									success : function(jsonObject) {
										var nJsonObject = jsonObject;
										var trade_price = numberWithCommas(nJsonObject.data.closing_price);
										$("#live").val(trade_price);

									}
								});
					}, 1000);
		},

		updateTotalmoney : function() {

			var cb = "${cbList}";
			console.log(cb);

		}

	}
</script>

<script src="./js/jquery.validate.js"></script>
<script src="./js/account.js"></script>
<script type="text/javascript">
	account.deposit();
	account.withdraw();
	accounts.coin_price();
	accounts.updateTotalmoney();
</script>

</html>