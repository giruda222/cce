<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tradient </title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="./images/favicon.png">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="./vendor/waves/waves.min.css">
    <link rel="stylesheet" href="./vendor/owlcarousel/css/owl.carousel.min.css">
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


        <div class="verification section-padding">
            <div class="container h-100">
                <div class="row justify-content-center h-100 align-items-center">
                    <div class="col-xl-4 col-md-6">
                        <div class="auth-form card">
                            <div class="card-header">
                                <h4 class="card-title">Link a debit card</h4>
                            </div>
                            <div class="card-body">
                                <form action="verify-step-6.html" class="identity-upload">
                                    <div class="form-row">
                                        <div class="form-group col-xl-12">
                                            <label class="mr-sm-2">Name on card </label>
                                            <input type="text" class="form-control" placeholder="Maria Pascle">
                                        </div>
                                        <div class="form-group col-xl-12">
                                            <label class="mr-sm-2">Card number </label>
                                            <input type="text" class="form-control" placeholder="5658 4258 6358 4756">
                                        </div>
                                        <div class="form-group col-xl-4">
                                            <label class="mr-sm-2">Expiration </label>
                                            <input type="text" class="form-control" placeholder="10/22">
                                        </div>
                                        <div class="form-group col-xl-4">
                                            <label class="mr-sm-2">CVC </label>
                                            <input type="text" class="form-control" placeholder="125">
                                        </div>
                                        <div class="form-group col-xl-4">
                                            <label class="mr-sm-2">Postal code </label>
                                            <input type="text" class="form-control" placeholder="2368">
                                        </div>

                                        <div class="text-center col-12">
                                            <button type="submit" class="btn btn-success pl-5 pr-5">Save</button>
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