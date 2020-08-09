<!DOCTYPE html>
<html lang="en">


    <head>


        <!-- FAVICONS ICON ============================================= -->
        <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />

        <!-- PAGE TITLE HERE ============================================= -->
        <title>EduSHEAT : Learn To Lead </title>

        <!-- MOBILE SPECIFIC ============================================= -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- All PLUGINS CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/assets.css">

        <!-- TYPOGRAPHY ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/typography.css">

        <!-- SHORTCODES ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">

        <!-- STYLESHEETS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">

    </head>
    <body id="bg">
        <div class="page-wraper">
            <div id="loading-icon-bx"></div>
            <div class="account-form">
                <div class="account-head" style="background-image:url(assets/images/background/bg2.jpg);">
                    <a href="index.jsp"><img src="assets/images/logo-white-2.png" alt=""></a>
                </div>
                <div class="account-form-inner">
                    <div class="account-container">
                        <div class="heading-bx left">
                            <h2 class="title-head">Login For <span>Admin</span></h2>

                        </div>	
                        <form class="contact-bx"  method="post">
                            <div class="row placeani">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <label>Your Admin Id</label>
                                            <input name="userid" id="userid" type="text" required="" class="form-control">
                                        </div>
                                        <span id="userid_error" style="color: red"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <div class="input-group"> 
                                            <label>Your Password</label>
                                            <input name="password" id="password" type="password" class="form-control" required="">
                                        </div>
                                        <span id="password_error" style="color: red"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group form-forget">

                                        <a href="forget-password.jsp" class="ml-auto">Forgot Password?</a>
                                    </div>
                                </div>
                                <div class="col-lg-12 m-b30">
                                    <input  type="button" value="Login" class="btn button-md" onclick="loginValidate()" />
                                </div>
                                <span id="error" style="color: red"></span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <script>

            function loginValidate()
            {
                var userid = $("#userid").val().trim();
                var password = $("#password").val().trim();
                if (userid === "" && password === "")
                {
                    document.getElementById("userid_error").innerHTML = "Please Enter User ID!";
                    document.getElementById("password_error").innerHTML = "Please Enter Password!";
                } else if (userid === "" || password === "")
                {
                    document.getElementById("error").innerHTML = "Please Enter Username and Password Both!";
                } else
                {
                    document.getElementById("userid_error").innerHTML = "";
                    document.getElementById("password_error").innerHTML = "";
                    document.getElementById("error").innerHTML = "";

                    $.ajax({
                        type: 'POST',
                        url: "validateLogin.jsp",
                        data: {userid: userid, password: password},
                        success: function (msg) {
                            $("#error").empty();
                            $("#error").append(msg);
                        }
                    });
                }
            }

        </script>




        <!-- External JavaScripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/vendors/bootstrap/js/popper.min.js"></script>
        <script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
        <script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
        <script src="assets/vendors/counter/waypoints-min.js"></script>
        <script src="assets/vendors/counter/counterup.min.js"></script>
        <script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
        <script src="assets/vendors/masonry/masonry.js"></script>
        <script src="assets/vendors/masonry/filter.js"></script>
        <script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
        <script src="assets/js/functions.js"></script>
        <script src="assets/js/contact.js"></script>
        <script src='assets/vendors/switcher/switcher.js'></script>
    </body>

</html>
