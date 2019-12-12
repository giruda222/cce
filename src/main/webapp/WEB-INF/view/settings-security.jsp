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

        <div class="header dashboard">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <nav class="navbar navbar-expand-lg navbar-light px-0">
                            <a class="navbar-brand" href="index.html"><img src="./images/w_logo.png" alt=""></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.html">Dashboard</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="buy-sell.html">Buy/Sell</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="accounts.html">Accounts</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active" href="settings.html">Settings</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="dashboard_log my-2">
                                <div class="d-flex align-items-center">
                                    <div class="account_money">
                                        <ul>
                                            <li class="crypto">
                                                <span>0.0025</span>
                                                <i class="cc BTC-alt"></i>
                                            </li>
                                            <li class="usd">
                                                <span>19.93 USD</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="profile_log dropdown">
                                        <div class="user" data-toggle="dropdown">
                                            <span class="thumb"><i class="la la-user"></i></span>
                                            <span class="name">Maria Pascle</span>
                                            <span class="arrow"><i class="la la-angle-down"></i></span>
                                        </div>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="accounts.html" class="dropdown-item">
                                                <i class="la la-user"></i> Account
                                            </a>
                                            <a href="history.html" class="dropdown-item">
                                                <i class="la la-book"></i> History
                                            </a>
                                            <a href="settings.html" class="dropdown-item">
                                                <i class="la la-cog"></i> Setting
                                            </a>
                                            <a href="lock.html" class="dropdown-item">
                                                <i class="la la-lock"></i> Lock
                                            </a>
                                            <a href="index.html" class="dropdown-item logout">
                                                <i class="la la-sign-out"></i> Logout
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

        <div class="page_title section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-6">
                        <div class="page_title-content">
                            <p>Welcome Back,
                                <span> Maria Pascle</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-6">
                        <ul class="text-right breadcrumbs list-unstyle">
                            <li><a href="./settings.html">Settings </a></li>
                            <li class="active"><a href="#">Security</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="settings mb-80">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-4">
                        <div class="card settings_menu">
                            <div class="card-header">
                                <h4 class="card-title">Settings</h4>
                            </div>
                            <div class="card-body">
                                <ul>
                                    <li class="nav-item">
                                        <a href="./settings.html" class="nav-link">
                                            <i class="la la-user"></i>
                                            <span>Edit Profile</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="./settings-preferences.html" class="nav-link">
                                            <i class="la la-cog"></i>
                                            <span>Preferences</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="./settings-security.html" class="nav-link active">
                                            <i class="la la-lock"></i>
                                            <span>Security</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="./settings-account.html" class="nav-link">
                                            <i class="la la-bank"></i>
                                            <span>Linked Account</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-9 col-md-8">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Security</h4>
                            </div>
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <div class="col-xl-4">
                                        <div class="id_card">
                                            <img src="./images/id.png" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="id_info">
                                            <h3>Maria Pascle </h3>
                                            <p class="mb-1 mt-3">ID: 0024 5687 2254 3698 </p>
                                            <p class="mb-1">Status: <span class="font-weight-bold">Verified</span></p>
                                            <a href="verify-step-2.html" class="btn btn-success mt-3">New ID</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="phone_verify">
                                            <h4 class="card-title mb-3">Email Address</h4>
                                            <form action="otp-2.html">
                                                <div class="form-row align-items-center">
                                                    <div class="form-group col-xl-6">
                                                        <input type="text" class="form-control" placeholder="hello@example.com ">
                                                        <button class="btn btn-success mt-4">Add</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="phone_verified">
                                            <h5> <span><i class="fa fa-envelope"></i></span> hello@example.com</h5>
                                            <div class="verify">
                                                <div class="verified">
                                                    <span><i class="la la-check"></i></span>
                                                    <a href="#">Verified</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="phone_verify">
                                            <h4 class="card-title mb-3">Add Phone Number</h4>
                                            <form action="otp-2.html">
                                                <div class="form-row align-items-center">
                                                    <div class="form-group col-xl-6">
                                                        <input type="text" class="form-control" placeholder="+1 2335 2458 ">
                                                        <button class="btn btn-success mt-4">Add</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="phone_verified">
                                            <h5> <span><i class="fa fa-phone"></i></span> +1 23584 2659</h5>
                                            <div class="verify">
                                                <div class="verified">
                                                    <span><i class="la la-check"></i></span>
                                                    <a href="#">Verified</a>
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



        <div class="footer">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-6 col-md-6">
                        <div class="copy_right">
                            Copyright © 2019 Quixlab. All Rights Reserved.
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6 text-lg-right text-center">
                        <div class="social">
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <script src="./vendor/jquery/jquery.min.js"></script>
    <script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="./vendor/waves/waves.min.js"></script>
    <script src="./js/scripts.js"></script>
</body>

</html>