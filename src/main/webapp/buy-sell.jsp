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

		<div class="row">
			<div class="col-xl-9 col-lg-9">
				<div class="card">
					<div class="card profile_chart">
						<div class="card-header">
							<div class="chart_current_data">
								<h3>ASSETS</h3>
							</div>
							<div id="assetstabs" class="duration-option">
								<a class="active" id="current" href="#">current</a> <a
									id="booking" href="#">booking</a> <a id="history" href="#">history</a>
								<a id="cancle" href="#">cancle</a>
							</div>
						</div>
						<div class="card-header border-0 pb-0">
							<h4 class="card-title">Recent Activities</h4>
						</div>

					</div>
				</div>



				<!-- history card start-->
				<div>
					<div class="card-body" id="current-body">
						<div class="transaction-table">
							<div class="table-responsive">
								<table class="table mb-0 table-responsive-sm">
									<tbody>
										<tr>
											<td><span class="badge badge-danger"> </span></td>

											<td>a_no</td>

											<td>p_name</td>

											<td>c_quantity</td>

											<td>c_avg</td>

											<td>c_bquantity</td>

										</tr>

										<!-- current tab -->
										<c:forEach var="cbList" items="${cbList}">
											<tr>

												<td><span class="badge badge-danger"> </span></td>

												<td>${cbList.cp.account.a_no}</td>

												<td>${cbList.cp.product.p_name}</td>

												<td>${cbList.c_quantity}</td>

												<td>${cbList.c_avg}</td>

												<td>${cbList.c_bquantity}</td>

											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="card-body" id="booking-body" style="display: none">
					<div class="transaction-table">
						<div class="table-responsive">
							<table class="table mb-0 table-responsive-sm">
								<tbody>
									<tr>
										<td>b_no</td>
										<td>b_type</td>
										<td>b_status</td>
										<td>p_name</td>
										<td>b_quantity</td>
										<td>b_price</td>
										<td>b_orderPrice</td>
										<td>b_avgPrice</td>
										<td>b_date</td>
									</tr>

									<!-- current tab -->
									<c:forEach var="bookingList" items="${bookingList}">
										<tr class="bl" b_no="${bookingList.b_no}">
											<td>${bookingList.b_no}</td>
											<td>${bookingList.b_type}</td>
											<td>${bookingList.b_status}</td>
											<td>${bookingList.product.p_no}</td>
											<td>${bookingList.b_quantity}</td>
											<td>${bookingList.b_price}</td>
											<td>${bookingList.b_orderPrice}</td>
											<td>${bookingList.b_avgPrice}</td>
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
								<tbody>
									<tr>
										<td>b_no</td>
										<td>b_type</td>
										<td>b_status</td>
										<td>p_name</td>
										<td>b_quantity</td>
										<td>b_price</td>
										<td>b_orderPrice</td>
										<td>b_avgPrice</td>
										<td>b_date</td>
									</tr>

									<!-- current tab -->
									<c:forEach var="historyList" items="${historyList}">
										<tr>
											<td>${historyList.b_no}</td>
											<td>${historyList.b_type}</td>
											<td>${historyList.b_status}</td>
											<td>${historyList.product.p_no}</td>
											<td>${historyList.b_quantity}</td>
											<td>${historyList.b_price}</td>
											<td>${historyList.b_orderPrice}</td>
											<td>${historyList.b_avgPrice}</td>
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
								<tbody>
									<tr>
										<td>b_no</td>
										<td>b_type</td>
										<td>b_status</td>
										<td>p_name</td>
										<td>b_quantity</td>
										<td>b_price</td>
										<td>b_orderPrice</td>
										<td>b_avgPrice</td>
										<td>b_date</td>
									</tr>
									<tr>
										<td>cancle</td>
									</tr>
									<!-- current tab -->
									<c:forEach var="cancleList" items="${cancleList}">
										<tr>
											<td>${cancleList.b_no}</td>
											<td>${cancleList.b_type}</td>
											<td>${cancleList.b_status}</td>
											<td>${cancleList.product.p_no}</td>
											<td>${cancleList.b_quantity}</td>
											<td>${cancleList.b_price}</td>
											<td>${cancleList.b_orderPrice}</td>
											<td>${cancleList.b_avgPrice}</td>
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





		<div id="footer">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_footer.jsp" />
			<!-- include_common_top.jsp end-->
		</div>


		<script src="./vendor/jquery/jquery.min.js"></script>
		<script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="./vendor/waves/waves.min.js"></script>
		<script src="./js/scripts.js"></script>
		<script src="./js/buysell.js"></script>
		<script type="text/javascript">
			buysell.current();
			buysell.booking();
			buysell.history();
			buysell.cancle();

			$(".bl").on('click', function(e) {
				var cc = $(e.target).parent().attr("b_no");
				alert("수정가능한부분? " + cc);
			});
		</script>
</body>

</html>