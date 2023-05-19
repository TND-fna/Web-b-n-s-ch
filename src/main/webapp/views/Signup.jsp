<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="./assets/css/login.css">
    <link rel="stylesheet" href="./assets/js/login.js">
    <link rel="stylesheet" href="./assets/font/fontawesome-free-6.2.0-web/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>

<body>
    <!-- Header -->
    <div class="header">
        <div class="header-text">
            <a class="header-text-brand" href="home">NHQShop.vn</a>
        </div>
    </div>

    <div class="content">
        <div class="dust-paarticle">

            <svg width="100%" id="dust-paarticle" height="100%" viewBox="0 0 885 455" fill="none"
                xmlns="http://www.w3.org/2000/svg">
                <path
                    d="M678.1 394.1C679.923 394.1 681.4 392.622 681.4 390.8C681.4 388.977 679.923 387.5 678.1 387.5C676.277 387.5 674.8 388.977 674.8 390.8C674.8 392.622 676.277 394.1 678.1 394.1Z"
                    stroke="#F4CD39" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path opacity="0.46"
                    d="M880.3 342.9C882.123 342.9 883.6 341.423 883.6 339.6C883.6 337.777 882.123 336.3 880.3 336.3C878.477 336.3 877 337.777 877 339.6C877 341.423 878.477 342.9 880.3 342.9Z"
                    stroke="#F4CD39" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path opacity="0.46"
                    d="M282.2 7.69997C284.023 7.69997 285.5 6.2225 285.5 4.39996C285.5 2.57742 284.023 1.09998 282.2 1.09998C280.377 1.09998 278.9 2.57742 278.9 4.39996C278.9 6.2225 280.377 7.69997 282.2 7.69997Z"
                    stroke="#F4CD39" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path
                    d="M598.3 207.8C601.061 207.8 603.3 205.561 603.3 202.8C603.3 200.039 601.061 197.8 598.3 197.8C595.539 197.8 593.3 200.039 593.3 202.8C593.3 205.561 595.539 207.8 598.3 207.8Z"
                    stroke="#FDB130" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path
                    d="M48.7 442.7C50.4121 442.7 51.8 441.312 51.8 439.6C51.8 437.888 50.4121 436.5 48.7 436.5C46.9879 436.5 45.6 437.888 45.6 439.6C45.6 441.312 46.9879 442.7 48.7 442.7Z"
                    stroke="#E03F8D" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path
                    d="M489.7 311.7C491.909 311.7 493.7 309.909 493.7 307.7C493.7 305.491 491.909 303.7 489.7 303.7C487.491 303.7 485.7 305.491 485.7 307.7C485.7 309.909 487.491 311.7 489.7 311.7Z"
                    stroke="#1DB7C2" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path
                    d="M373.8 225C375.623 225 377.1 223.523 377.1 221.7C377.1 219.877 375.623 218.4 373.8 218.4C371.977 218.4 370.5 219.877 370.5 221.7C370.5 223.523 371.977 225 373.8 225Z"
                    stroke="#FDB130" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path
                    d="M844.1 453.7C846.309 453.7 848.1 451.909 848.1 449.7C848.1 447.491 846.309 445.7 844.1 445.7C841.891 445.7 840.1 447.491 840.1 449.7C840.1 451.909 841.891 453.7 844.1 453.7Z"
                    stroke="#1DB7C2" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path
                    d="M151 254.6C152.16 254.6 153.1 253.66 153.1 252.5C153.1 251.34 152.16 250.4 151 250.4C149.84 250.4 148.9 251.34 148.9 252.5C148.9 253.66 149.84 254.6 151 254.6Z"
                    stroke="#FDB130" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path
                    d="M3.6 315.9C4.7598 315.9 5.7 314.96 5.7 313.8C5.7 312.64 4.7598 311.7 3.6 311.7C2.4402 311.7 1.5 312.64 1.5 313.8C1.5 314.96 2.4402 315.9 3.6 315.9Z"
                    stroke="#9E3FB7" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path d="M768.2 366.7H775.5" stroke="#9E3FB7" stroke-width="2" stroke-miterlimit="10"
                    stroke-linecap="round" stroke-linejoin="round" />
                <path d="M771.8 363.1V370.4" stroke="#9E3FB7" stroke-width="2" stroke-miterlimit="10"
                    stroke-linecap="round" stroke-linejoin="round" />
                <g opacity="0.6">
                    <path opacity="0.6" d="M696.4 40.5H703.8" stroke="#9E3FB7" stroke-width="2" stroke-miterlimit="10"
                        stroke-linecap="round" stroke-linejoin="round" />
                    <path opacity="0.6" d="M700.1 36.8V44.2" stroke="#9E3FB7" stroke-width="2" stroke-miterlimit="10"
                        stroke-linecap="round" stroke-linejoin="round" />
                </g>
                <path d="M630.3 284.1H636" stroke="#E03F8D" stroke-width="2" stroke-miterlimit="10"
                    stroke-linecap="round" stroke-linejoin="round" />
                <path d="M633.2 281.2V286.9" stroke="#E03F8D" stroke-width="2" stroke-miterlimit="10"
                    stroke-linecap="round" stroke-linejoin="round" />
                <path d="M414.9 104.5H420.6" stroke="#E03F8D" stroke-width="2" stroke-miterlimit="10"
                    stroke-linecap="round" stroke-linejoin="round" />
                <path d="M417.8 101.7V107.3" stroke="#E03F8D" stroke-width="2" stroke-miterlimit="10"
                    stroke-linecap="round" stroke-linejoin="round" />
                <path d="M203.7 290.8H211.5" stroke="#E03F8D" stroke-width="2" stroke-miterlimit="10"
                    stroke-linecap="round" stroke-linejoin="round" />
                <path d="M207.6 286.9V294.6" stroke="#E03F8D" stroke-width="2" stroke-miterlimit="10"
                    stroke-linecap="round" stroke-linejoin="round" />
                <path
                    d="M252.1 346.8C253.2 345.3 254.8 346.4 255.9 344.9C257 343.4 255.4 342.2 256.5 340.7C257.6 339.2 259.2 340.3 260.3 338.8C261.4 337.3 259.8 336.1 260.9 334.5C262 333 263.6 334.1 264.7 332.6"
                    stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <g opacity="0.4">
                    <path opacity="0.4"
                        d="M36.3 391.2C35.7 389.4 37.5 388.7 36.9 387C36.3 385.2 34.4 385.9 33.7 384.1C33.1 382.3 34.9 381.6 34.3 379.9C33.7 378.1 31.8 378.8 31.1 377C30.5 375.2 32.3 374.5 31.7 372.8"
                        stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                        stroke-linejoin="round" />
                </g>
                <path
                    d="M732.3 292.1C730.6 291.2 731.5 289.5 729.8 288.6C728.1 287.7 727.2 289.5 725.5 288.7C723.8 287.8 724.7 286.1 723 285.2C721.3 284.3 720.4 286.1 718.7 285.3C717 284.4 717.9 282.7 716.2 281.8"
                    stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <g opacity="0.53">
                    <path opacity="0.53"
                        d="M282.7 439.7C281.5 440.4 280.5 438.7 279.3 439.4C278.1 440.1 279.1 441.8 278 442.5C276.8 443.2 275.8 441.5 274.6 442.2C273.4 442.9 274.4 444.6 273.3 445.3C272.2 446 271.1 444.3 269.9 445"
                        stroke="#1DB7C2" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                        stroke-linejoin="round" />
                </g>
                <path
                    d="M819.6 253.6C821.4 253 822 255 823.8 254.4C825.6 253.8 825 251.9 826.8 251.4C828.6 250.8 829.2 252.8 831 252.2C832.8 251.6 832.2 249.7 834 249.2C835.8 248.7 836.4 250.6 838.2 250"
                    stroke="#9E3FB7" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
                <path
                    d="M487.9 207.4C489.7 206.8 490.3 208.8 492.1 208.2C493.9 207.6 493.3 205.7 495.1 205.2C496.9 204.6 497.5 206.6 499.3 206C501.1 205.4 500.5 203.5 502.3 203C504.1 202.5 504.7 204.4 506.5 203.8"
                    stroke="#9E3FB7" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round"
                    stroke-linejoin="round" />
            </svg>

        </div>

        <div class="container-fluid">
            <div class="row">
                <div
                    class="authfy-container col-xs-12 col-sm-10 col-md-8 col-lg-6 col-sm-offset-1 col-md-offset-2 col-lg-offset-3">
                    <div class="col-sm-5 authfy-panel-left">
                        <div class="brand-col">
                            <div class="headline">
                                <!-- brand-logo start -->
                                <div class="brand-logo">
                                    <a class="brand-logo-text" href="http://127.0.0.1:5501/index.html">NHQShop.vn</a>
                                </div><!-- ./brand-logo -->
                                <p>Đăng nhập nhanh chóng bằng mạng xã hội.</p>
                                <!-- social login buttons start -->
                                <div class="row social-buttons">
                                    <div class="col-xs-4 col-sm-4 col-md-12">
                                        <a href="#" class="btn btn-block btn-facebook">
                                            <i class="fa-brands fa-facebook"></i> <span
                                                class="hidden-xs hidden-sm social-button">Đăng nhập với Facebook</span>
                                        </a>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-12">
                                        <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/WebBanHang/LoginGoogleHandler&response_type=code
		   &client_id=53687840933-fd8nnbpaif4sjq16fj886kmkd0ml4fjb.apps.googleusercontent.com&approval_prompt=force" class="btn btn-block btn-google">
                                            <i class="fa-brands fa-google"></i> <span
                                                class="hidden-xs hidden-sm social-button">Đăng nhập với Google</span>
                                        </a>
                                    </div>
                                </div><!-- ./social-buttons -->
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-7 authfy-panel-right">
                        <!-- authfy-login start -->
                        <div class="authfy-login">

                            <!-- panel-login start -->
                            <div id="loginForm" class="authfy-panel panel-login text-center ">
                                <div class="authfy-heading">
                                    <h3 class="auth-title">Đăng nhập</h3>
                                    <p>Bạn chưa có tài khoản? <a class="lnk-toggler" data-panel=".panel-signup" href="#"
                                            onclick="changeToSigninForm()">Đăng kí</a></p>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <form name="loginForm" class="loginForm" action="#" method="POST">
                                            <div class="form-group">
                                                <input type="email" class="form-control email" name="username"
                                                    placeholder="Email">
                                            </div>
                                            <div class="form-group">
                                                <div class="pwdMask">
                                                    <input type="password" id="myInput" class="form-control password"
                                                        name="password" placeholder="Mật khẩu" required>
                                                    <span class="fa fa-eye-slash pwd-toggle "
                                                        onclick="myFunction()"></span>
                                                </div>
                                            </div>
                                            <!-- start remember-row -->
                                            <div class="row remember-row">
                                                <div class="col-xs-6 col-sm-6">
                                                    <label class="checkbox text-left">
                                                        <input type="checkbox" value="remember-me">
                                                        <span class="label-text">Nhớ mật khẩu</span>
                                                    </label>
                                                </div>
                                                <div class="col-xs-6 col-sm-6">
                                                    <p class="forgotPwd">
                                                        <a class="lnk-toggler" data-panel=".panel-forgot" href="#"
                                                            onclick="changeToForgotPwdForm()">Quên
                                                            mật khẩu?</a>
                                                    </p>
                                                </div>
                                            </div> <!-- ./remember-row -->
                                            <div class="form-group">
                                                <a href="" target="_blank" class="btn btn-lg btn-primary btn-block"
                                                    type="button">Đăng nhập</a>

                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div> <!-- ./panel-login -->

                            <!-- panel-signup start -->
                            <div id="signinForm" class="authfy-panel panel-signup text-center active">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <div class="authfy-heading">
                                            <h3 class="auth-title">Đăng kí miễn phí</h3>
                                        </div>
                                        <form name="signupForm" class="signupForm" action="#" method="POST">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="fullname"
                                                    placeholder="Tên">
                                            </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" name="username"
                                                    placeholder="Email">
                                            </div>
                                            <div class="form-group">
                                                <div class="pwdMask">
                                                    <input type="password" id="Signup_Password"
                                                        class="form-control password" name="password"
                                                        placeholder="Mật khẩu" required>
                                                    <span class="fa fa-eye-slash pwd-toggle "
                                                        onclick="myFunction_showPassword()"></span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <p class="term-policy text-muted small">Tôi động ý với <a href="#">chính
                                                        sách</a> và <a href="#">điều khoản dịch vụ</a>.</p>
                                            </div>
                                            <div class="form-group">
                                                <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng
                                                    kí</button>
                                            </div>
                                        </form>
                                        <a class="lnk-toggler" data-panel=".panel-login" href="#"
                                            onclick="changeToLoginForm()">Bạn đã sẵn sàng để
                                            đăng nhập?</a>
                                    </div>
                                </div>
                            </div> <!-- ./panel-signup -->

                            <!-- panel-forget start -->
                            <div id="forgotPwd" class="authfy-panel panel-forgot ">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <div class="authfy-heading">
                                            <h3 class="auth-title">Khôi phục mật khẩu</h3>
                                            <p>Mật khẩu mới sẽ được gửi về email của bạn.</p>
                                        </div>
                                        <form name="forgetForm" class="forgetForm" action="#" method="POST">
                                            <div class="form-group">
                                                <input type="email" class="form-control" name="username"
                                                    placeholder="Email">
                                            </div>
                                            <div class="form-group">
                                                <button class="btn btn-lg btn-primary btn-block"
                                                    type="submit">Gửi</button>
                                            </div>
                                            <div class="form-group">
                                                <a class="lnk-toggler" data-panel=".panel-login" href="#"
                                                    onclick="changeToLoginForm()">Đã có tài
                                                    khoản?</a>
                                            </div>
                                            <div class="form-group">
                                                <a class="lnk-toggler" data-panel=".panel-signup" href="#"
                                                    onclick="changeToSigninForm()">Chưa có tài
                                                    khoản?</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div> <!-- ./panel-forgot -->

                        </div> <!-- ./authfy-login -->
                    </div>
                </div>
            </div> <!-- ./row -->
        </div>
    </div>

    <!-- Footer -->
	<%@ include file="/common/web/Footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>

    <script src="./assets/javascript/login.js"></script>
</body>

</html>