<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<div class="col-xl-12">
						<div class="card">
							<div class="card-header border-0">
								<h4 class="card-title">Product List</h4>
							</div>
							<div class="card-body pt-0">
								<form id="go_price" action="gotodouble">
								<input type="hidden" id="price" name="price"/>
								<input type="hidden" id="coin_name" name="coin_name"/>
								</form>
								<div class="transaction-table">
									<div class="table-responsive">
										<table class="table mb-0 table-responsive-sm">
											<tbody style="text-align: center">
												<tr>
													<td>name</td>
													<td>price</td>
													<td>fluctate_24H</td>
													<td>fluctate_24H_rate</td>
													<td>  </td>
												</tr>
											</tbody>
											<tbody id="coin_list" style="text-align: center">
												
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
		
		<div id="footer">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_footer.jsp" />
			<!-- include_common_top.jsp end-->
		</div>


	<!-- Script Source-->
		<script src="./vendor/jquery/jquery.min.js"></script>
		<script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="./vendor/waves/waves.min.js"></script>
		<script src="./js/scripts.js"></script>
		
	<!-- price function script -->	
		<script src="./js/price.js"></script>
		<script type="text/javascript">
		
		
		price.price_list();
		
		</script>
</body>

</html>