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
		<div class="history mb-80">
			<div class="container">
				<div class="row">
					<div class="col-xl-12 col-lg-12">
						<div class="card">
							<div class="card profile_chart">
								<div class="card-header">
									<div class="chart_current_data">
										<h3>ASSETS</h3>
									</div>
									<div id="assetstabs" class="duration-option">
										<a class="active" id="current" href="#">current</a> 
										<a id="acc" href="#">acc.history</a>
										<a id="booking" href="#">pending</a>
										<a id="history" href="#">conclusion</a>
										<a id="cancle" href="#">cancle</a>
									</div>
								</div>
								<div class="card-header border-0 pb-0">
									<h4 class="card-title">Recent Activities</h4>
								</div>
								<br />

							</div>
							
							<!-- history card start-->
							<div class="card-body" id="current-body">
								<div class="transaction-table">
									<div class="table-responsive">
										<table class="table mb-0 table-responsive-sm">
											<tbody>
												<tr style="text-align: center">
													<td><span class="badge badge-danger"> </span></td>

													<td>AccountNo.</td>

													<td>Product</td>

													<td>Quantity</td>

													<td>AVG</td>

												</tr>

												<!-- current tab -->
												<c:forEach var="cbList" items="${cbList}">
													<tr style="text-align: center">

														<td><span class="badge badge-danger"> </span></td>

														<td>${cbList.cp.account.a_no}</td>

														<td>${cbList.cp.product.p_name}</td>

														<td>${cbList.c_quantity}</td>

														<td>${cbList.c_avg}</td>
													</tr>
												</c:forEach>

											</tbody>
										</table>
									</div>
								</div>
							</div>
							
							<div class="card-body" id="acc-body" style="display: none">
								<div class="transaction-table">
									<div class="table-responsive">
										<table class="table mb-0 table-responsive-sm">
											<tbody style="text-align: center">
												<tr>
													<td>Type</td>
													<td>Price</td>
													<td>Date</td>
												</tr>

												<!-- current tab -->
												<c:forEach var="accList" items="${accList}">
													<tr class="bl" b_no="${accList.b_no}">
														<td style="display: none">${accList.b_no}</td>
													 	<c:choose>
														<c:when test="${accList.b_status eq 6}">
														<td><span class="badge badge-danger">Withdraw</span></td>
														</c:when>
														<c:when test="${accList.b_status eq 5}">
														<td><span class="badge badge-success">Deposit</span></td>
														</c:when>
														</c:choose>
														<td>${accList.b_orderPrice}</td>
														<td>${accList.b_date}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>

							<div class="card-body" id="booking-body" style="display: none">
								<div class="transaction-table">
									<div class="table-responsive">
										<table class="table mb-0 table-responsive-sm">
											<tbody style="text-align: center">
												<tr>
													<td>Type</td>
													<td>Product</td>
													<td>Quantity</td>
													<td>Price</td>
													<td>OrderPrice</td>
													<td>Date</td>
												</tr>

												<!-- current tab -->
												<c:forEach var="bookingList" items="${bookingList}">
													<tr class="bl" b_no="${bookingList.b_no}">
														<td style="display: none">${bookingList.b_no}</td>
													 	<c:choose>
														<c:when test="${bookingList.b_type eq 0}">
														<td><span class="badge badge-danger">Sold</span></td>
														</c:when>
														<c:when test="${bookingList.b_type eq 1}">
														<td><span class="badge badge-success">Buy</span></td>
														</c:when>
														</c:choose>
														<td>${bookingList.product.p_name}</td>
														<td>${bookingList.b_quantity}</td>
														<td>${bookingList.b_price}</td>
														<td>${bookingList.b_orderPrice}</td>
														<td>${bookingList.b_date}</td>
														
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>

							<div class="card-body" id="history-body" style="display: none">
								<div class="transaction-table">
									<div class="table-responsive">
										<table class="table mb-0 table-responsive-sm">
											<tbody style="text-align: center">
												<tr>
													<td>Type</td>
													<td>Product</td>
													<td>Quantity</td>
													<td>Price</td>
													<td>OrderPrice</td>
													<td>Date</td>
												</tr>

												<!-- current tab -->
												<c:forEach var="historyList" items="${historyList}">
													<tr>
														<td style="display: none">${historyList.b_no}</td>
														<c:choose>
														<c:when test="${historyList.b_type eq 0}">
														<td><span class="badge badge-danger">Sold</span></td>
														</c:when>
														<c:when test="${historyList.b_type eq 1}">
														<td><span class="badge badge-success">Buy</span></td>
														</c:when>
														</c:choose>
														<td>${historyList.product.p_name}</td>
														<td>${historyList.b_quantity}</td>
														<td>${historyList.b_price}</td>
														<td>${historyList.b_orderPrice}</td>
														<td>${historyList.b_date}</td>
													</tr>
												</c:forEach>

											</tbody>
										</table>
									</div>
								</div>
							</div>

							<div class="card-body" id="cancle-body" style="display: none">
								<div class="transaction-table">
									<div class="table-responsive">
										<table class="table mb-0 table-responsive-sm">
											<tbody style="text-align: center">
												<tr>
													<td>Type</td>
													<td>Product</td>
													<td>Quantity</td>
													<td>Price</td>
													<td>OrderPrice</td>
													<td>Date</td>
												</tr>
												<!-- current tab -->
												<c:forEach var="cancleList" items="${cancleList}">
													<tr>
														<td style="display: none">${cancleList.b_no}</td>
														<c:choose>
														<c:when test="${cancleList.b_type eq 0}">
														<td><span class="badge badge-danger">Sold</span></td>
														</c:when>
														<c:when test="${cancleList.b_type eq 1}">
														<td><span class="badge badge-success">Buy</span></td>
														</c:when>
														</c:choose>
														<td>${cancleList.product.p_name}</td>
														<td>${cancleList.b_quantity}</td>
														<td>${cancleList.b_price}</td>
														<td>${cancleList.b_orderPrice}</td>
														<td>${cancleList.b_date}</td>

													</tr>
												</c:forEach>

											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- history card end -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div id="footer">
		<jsp:include page="include_footer.jsp" />
	</div>
	<!-- main END -->

	<!-- Modal -->
	<!-- 회원가입 확인 Modal-->
	<div class="modal fade" id="testModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">예야쿠</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">X</span>
					</button>
				</div>
				<div class="modal-body">예약 취소각?</div>
				<div class="modal-footer">
					<a class="btn" id="modalY" href="#">예</a>
					<button class="btn" type="button" data-dismiss="modal">아니요</button>
				</div>
			</div>
		</div>
	</div>
	<!-- model end -->

	<script src="./vendor/jquery/jquery.min.js"></script>
	<script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="./vendor/waves/waves.min.js"></script>
	<script src="./js/scripts.js"></script>
	<script src="./js/buysell.js"></script>
	<script type="text/javascript">
		buysell.current();
		buysell.acc();
		buysell.booking();
		buysell.history();
		buysell.cancle();

		$('.modal').on(
				'shown.bs.modal',
				function() {
					//Make sure the modal and backdrop are siblings (changes the DOM)
					$(this).before($('.modal-backdrop'));
					//Make sure the z-index is higher than the backdrop
					$(this).css("z-index",
							parseInt($('.modal-backdrop').css('z-index')) + 1);
				});
		$('.bl').on('click', function(e) {
			var num = $(e.target).parent().attr("b_no");
			$("#modalY").attr("href", "deleteBooking?b_no=" + num);
			$('.modal-title').text("no." + num + " 예야쿠");
			$("#testModal").modal();
		});
	</script>
</body>

</html>