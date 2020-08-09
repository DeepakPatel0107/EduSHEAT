<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<!DOCTYPE html>
<html lang="en">

    <%
        String circular = "";
        String totalStaff = "";
        String totalNotes = "";
        String totalTutorial = "";
        String notice = "";
        String title = "";
        Connection conn = new DBConnection().getConnection();
        Statement stmt = conn.createStatement();
        String query131 = "SELECT count(title) FROM circular";
        ResultSet rs131 = stmt.executeQuery(query131);
        while (rs131.next()) {
            circular = rs131.getString(1);
        }

        String query111 = "SELECT count(regId) FROM staff_registration";
        ResultSet rs111 = stmt.executeQuery(query111);
        while (rs111.next()) {
            totalStaff = rs111.getString(1);
        }

        String query11 = "SELECT count(title) FROM notes";
        ResultSet rs11 = stmt.executeQuery(query11);
        while (rs11.next()) {
            totalNotes = rs11.getString(1);
        }

        String query12 = "SELECT count(title) FROM tutorialvideo";
        ResultSet rs12 = stmt.executeQuery(query12);
        while (rs12.next()) {
            totalTutorial = rs12.getString(1);
        }

        String query122 = "SELECT title, content FROM adminnotice where sNo=2";
        ResultSet rs122 = stmt.executeQuery(query122);
        while (rs122.next()) {
            title = rs122.getString(1);
            notice = rs122.getString(2);
        }


    %>



    <head>




        <style>
            .modal{
                opacity: 100;
            }
            .ringingBell{


                -webkit-animation: ring 4s .7s ease-in-out infinite;
                -webkit-transform-origin: 50% 4px;
                -moz-animation: ring 4s .7s ease-in-out infinite;
                -moz-transform-origin: 50% 4px;
                animation: ring 4s .7s ease-in-out infinite;
                transform-origin: 50% 4px;
            }

            @-webkit-keyframes ring {
                0% { -webkit-transform: rotateZ(0); }
                1% { -webkit-transform: rotateZ(30deg); }
                3% { -webkit-transform: rotateZ(-28deg); }
                5% { -webkit-transform: rotateZ(34deg); }
                7% { -webkit-transform: rotateZ(-32deg); }
                9% { -webkit-transform: rotateZ(30deg); }
                11% { -webkit-transform: rotateZ(-28deg); }
                13% { -webkit-transform: rotateZ(26deg); }
                15% { -webkit-transform: rotateZ(-24deg); }
                17% { -webkit-transform: rotateZ(22deg); }
                19% { -webkit-transform: rotateZ(-20deg); }
                21% { -webkit-transform: rotateZ(18deg); }
                23% { -webkit-transform: rotateZ(-16deg); }
                25% { -webkit-transform: rotateZ(14deg); }
                27% { -webkit-transform: rotateZ(-12deg); }
                29% { -webkit-transform: rotateZ(10deg); }
                31% { -webkit-transform: rotateZ(-8deg); }
                33% { -webkit-transform: rotateZ(6deg); }
                35% { -webkit-transform: rotateZ(-4deg); }
                37% { -webkit-transform: rotateZ(2deg); }
                39% { -webkit-transform: rotateZ(-1deg); }
                41% { -webkit-transform: rotateZ(1deg); }

                43% { -webkit-transform: rotateZ(0); }
                100% { -webkit-transform: rotateZ(0); }
            }

            @-moz-keyframes ring {
                0% { -moz-transform: rotate(0); }
                1% { -moz-transform: rotate(30deg); }
                3% { -moz-transform: rotate(-28deg); }
                5% { -moz-transform: rotate(34deg); }
                7% { -moz-transform: rotate(-32deg); }
                9% { -moz-transform: rotate(30deg); }
                11% { -moz-transform: rotate(-28deg); }
                13% { -moz-transform: rotate(26deg); }
                15% { -moz-transform: rotate(-24deg); }
                17% { -moz-transform: rotate(22deg); }
                19% { -moz-transform: rotate(-20deg); }
                21% { -moz-transform: rotate(18deg); }
                23% { -moz-transform: rotate(-16deg); }
                25% { -moz-transform: rotate(14deg); }
                27% { -moz-transform: rotate(-12deg); }
                29% { -moz-transform: rotate(10deg); }
                31% { -moz-transform: rotate(-8deg); }
                33% { -moz-transform: rotate(6deg); }
                35% { -moz-transform: rotate(-4deg); }
                37% { -moz-transform: rotate(2deg); }
                39% { -moz-transform: rotate(-1deg); }
                41% { -moz-transform: rotate(1deg); }

                43% { -moz-transform: rotate(0); }
                100% { -moz-transform: rotate(0); }
            }

            @keyframes ring {
                0% { transform: rotate(0); }
                1% { transform: rotate(30deg); }
                3% { transform: rotate(-28deg); }
                5% { transform: rotate(34deg); }
                7% { transform: rotate(-32deg); }
                9% { transform: rotate(30deg); }
                11% { transform: rotate(-28deg); }
                13% { transform: rotate(26deg); }
                15% { transform: rotate(-24deg); }
                17% { transform: rotate(22deg); }
                19% { transform: rotate(-20deg); }
                21% { transform: rotate(18deg); }
                23% { transform: rotate(-16deg); }
                25% { transform: rotate(14deg); }
                27% { transform: rotate(-12deg); }
                29% { transform: rotate(10deg); }
                31% { transform: rotate(-8deg); }
                33% { transform: rotate(6deg); }
                35% { transform: rotate(-4deg); }
                37% { transform: rotate(2deg); }
                39% { transform: rotate(-1deg); }
                41% { transform: rotate(1deg); }

                43% { transform: rotate(0); }
                100% { transform: rotate(0); }
            }





            .live-chat-app{

                position: fixed;
                bottom: 20px;
                right: 10px;
                z-index: 99;
                font-size: 18px;
                cursor: pointer;

            }

            .live-chat-app1{

                position: fixed;
                bottom: 20px;
                right: 10px;
                z-index: 99;
                font-size: 18px;
                cursor: pointer;
                opacity: 0.7

            }

            @keyframes glowing1 {
                0% { box-shadow: 0 0 -10px #ff0000; }
                40% { box-shadow: 0 0 20px #ff0000; }
                60% { box-shadow: 0 0 20px #ff0000; }
                100% { box-shadow: 0 0 -10px #ff0000; }
            }

            .button-glow1 {
                animation: glowing1 5000ms infinite;
            }



            @keyframes glowing {
                0% { box-shadow: 0 0 -10px #0000cc; }
                40% { box-shadow: 0 0 20px #0000cc; }
                60% { box-shadow: 0 0 20px #0000cc; }
                100% { box-shadow: 0 0 -10px #0000cc; }
            }

            .button-glow {
                animation: glowing 5000ms infinite;
            }


            .zoom {

                transition: transform .2s;

            }

            .zoom:hover {
                -ms-transform: scale(1.5); /* IE 9 */
                -webkit-transform: scale(1.5); /* Safari 3-8 */
                transform: scale(1.5); 
            }

        </style>
        <style>

            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box;}

            /* Button used to open the contact form - fixed at the bottom of the page */
            .open-button {
                background-color: #555;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                opacity: 0.8;
                position: fixed;
                bottom: 23px;
                right: 28px;
                width: 280px;
            }

            /* The popup form - hidden by default */
            .form-popup {
                display: none;
                position: fixed;
                bottom: 0;
                right: 15px;
                border: 3px solid #f1f1f1;
                z-index: 9;
            }

            /* Add styles to the form container */
            .form-container {
                max-width: 300px;
                padding: 10px;
                background-color: white;
            }

            /* Full-width input fields */
            .form-container input[type=text], .form-container input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                border: none;
                background: #f1f1f1;
            }

            /* When the inputs get focus, do something */
            .form-container input[type=text]:focus, .form-container input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Set a style for the submit/login button */
            .form-container .btn {
                background-color: #4CAF50;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                width: 100%;
                margin-bottom:10px;
                opacity: 0.8;
            }

            /* Add a red background color to the cancel button */
            .form-container .cancel {
                background-color: red;
            }

            /* Add some hover effects to buttons */
            .form-container .btn:hover, .open-button:hover {
                opacity: 1;
            }
        </style>
        <style>
            .img {
                min-width: 125px;
                min-height: 155px;
                width: 125px;
                height: 180px;
                border: 1px solid #CCC;
                border-radius: 4px;
                box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.075) inset;
                background-color: #FFFFFF;
            }






            ul.pinboards li,
            ul.tag-list li {
                list-style: none;
            }
            ul.pinboards li h4 {
                margin-left: 100px;
                margin-top: 70px;
                font-size: 60px;
            }


            ul.pinboards li h2 {
                margin-left: 60px;

                font-size: 30px;
            }



            ul.pinboards li div p { font-size: 16px; }
            ul.pinboards li div {
                text-decoration: none;
                color: #000;
                background: #ffc;
                display: block;
                height: 140px;
                width: 140px;
                padding: 1em;
                position: relative;
                align-content: center;
            }
            ul.pinboards li div small {
                position: absolute;
                top: 5px;
                right: 5px;
                font-size: 20px;
            }
            ul.pinboards li div a {
                position: absolute;
                right: 10px;
                bottom: 10px;
                color: inherit;
            }
            ul.pinboards li {
                margin: 50px 340px 250px 0;
                float: left;
            }
            ul.pinboards li div p {
                margin-left: 100px;
                font-size: 12px;
            }
            ul.pinboards li div {
                text-decoration: none;
                color: #000;
                background: #ffc;
                display: block;
                height: 140px;
                width: 140px;
                padding: 1em;
                /* Firefox */
                -moz-box-shadow: 5px 5px 2px #212121;
                /* Safari+Chrome */
                -webkit-box-shadow: 5px 5px 2px rgba(33, 33, 33, 0.7);
                /* Opera */
                box-shadow: 5px 5px 2px rgba(33, 33, 33, 0.7);
            }
            ul.pinboards li div {
                -webkit-transform: rotate(-6deg);
                -o-transform: rotate(-6deg);
                -moz-transform: rotate(-6deg);
                -ms-transform: rotate(-6deg);
            }
            ul.pinboards li:nth-child(even) div {
                -o-transform: rotate(4deg);
                -webkit-transform: rotate(4deg);
                -moz-transform: rotate(4deg);
                -ms-transform: rotate(4deg);
                position: relative;
                top: 5px;
            }
            ul.pinboards li:nth-child(3n) div {
                -o-transform: rotate(-3deg);
                -webkit-transform: rotate(-3deg);
                -moz-transform: rotate(-3deg);
                -ms-transform: rotate(-3deg);
                position: relative;
                top: -5px;
            }
            ul.pinboards li:nth-child(5n) div {
                -o-transform: rotate(5deg);
                -webkit-transform: rotate(5deg);
                -moz-transform: rotate(5deg);
                -ms-transform: rotate(5deg);
                position: relative;
                top: -10px;
            }
            ul.pinboards li div:hover,
            ul.pinboards li div:focus {
                -webkit-transform: scale(1.1);
                -moz-transform: scale(1.1);
                -o-transform: scale(1.1);
                -ms-transform: scale(1.1);
                position: relative;
                z-index: 5;
            }
            ul.pinboards li div {
                text-decoration: none;
                color: #000;
                background: #ffc;
                display: block;
                height: 410px;
                width: 510px;
                padding: 1em;
                -moz-box-shadow: 5px 5px 7px #212121;
                -webkit-box-shadow: 5px 5px 7px rgba(33, 33, 33, 0.7);
                box-shadow: 5px 5px 7px rgba(33, 33, 33, 0.7);
                -moz-transition: -moz-transform 0.15s linear;
                -o-transition: -o-transform 0.15s linear;
                -webkit-transition: -webkit-transform 0.15s linear;
            }


        </style>


        <!-- META ============================================= -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="keywords" content="" />
        <meta name="author" content="" />
        <meta name="robots" content="" />

        <!-- DESCRIPTION -->
        <meta name="description" content="EduSHEAT : Learn To Lead" />

        <!-- OG -->
        <meta property="og:title" content="EduSHEAT : Learn To Lead" />
        <meta property="og:description" content="EduSHEAT : Learn To Lead" />
        <meta property="og:image" content="" />
        <meta name="format-detection" content="telephone=no">

        <!-- FAVICONS ICON ============================================= -->
        <link rel="icon" href="../error-404.html" type="image/x-icon" />
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />

        <!-- PAGE TITLE HERE ============================================= -->
        <title>EduSHEAT : Learn To Lead </title>

        <!-- MOBILE SPECIFIC ============================================= -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--[if lt IE 9]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->

        <!-- All PLUGINS CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/assets.css">
        <link rel="stylesheet" type="text/css" href="assets/vendors/calendar/fullcalendar.css">

        <!-- TYPOGRAPHY ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/typography.css">

        <!-- SHORTCODES ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">

        <!-- STYLESHEETS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">
        <link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">

    </head>
    <body class="ttr-opened-sidebar ttr-pinned-sidebar" id="bg">

        <!-- header start -->
        <header class="ttr-header">
            <div class="ttr-header-wrapper">
                <!--sidebar menu toggler start -->
                <div class="ttr-toggle-sidebar ttr-material-button">
                    <i class="ti-close ttr-open-icon"></i>
                    <i class="ti-menu ttr-close-icon"></i>
                </div>
                <!--sidebar menu toggler end -->
                <!--logo start -->
                <div class="ttr-logo-box">
                    <div>
                        <a href="index.jsp" class="ttr-logo">
                            <img class="ttr-logo-mobile" alt="" src="assets/images/logo-mobile.png" width="30" height="30">
                            <img class="ttr-logo-desktop" alt="" src="assets/images/logo-white.png" width="160" height="27">
                        </a>
                    </div>
                </div>
                <!--logo end -->
                <div class="ttr-header-menu">
                    <!-- header left menu start -->
                    <ul class="ttr-header-navigation">
                        <li>
                            <a href="../index.jsp" class="ttr-material-button ttr-submenu-toggle">HOME</a>
                        </li>
 <li>
                                            <a href="../logout.jsp" class="ttr-material-button ttr-submenu-toggle">Logout </a>
						
					</li>
                    </ul>
                    <!-- header left menu end -->
                </div>
                <div class="ttr-header-right ttr-with-seperator">
                    <!-- header right menu start -->
                    <ul class="ttr-header-navigation">


                        <li>
                            <%                               String query13 = "SELECT * FROM student_registration where regId= '" + session.getAttribute("admin_id") + "'";
                                ResultSet rs13 = stmt.executeQuery(query13);

                                while (rs13.next()) {
                            %>
                            <a href="#" class="ttr-material-button ttr-submenu-toggle"><span class="ttr-user-avatar"><img alt="" src="../<%= rs13.getString("image_file")%>/<%= rs13.getString("image_name")%>" width="32" height="32"></span></a>
                                    <%
                                        }

                                    %>
                            <div class="ttr-header-submenu">
                                <ul>
                                    <li><a href="user-profile.jsp">My profile</a></li>
                                    <li><a href="timeTable.jsp">Time Table</a></li>
                                    <li><a href="mails.jsp">Messages</a></li>
                                    <li><a href="logout.jsp">Logout</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="ttr-hide-on-mobile">
                            <a href="#" class="ttr-material-button"><i class="ti-layout-grid3-alt"></i></a>
                            <div class="ttr-header-submenu ttr-extra-menu">
                                <a href="https://aktu.ac.in/circulars.html">
                                    <i class="fa fa-calendar-check-o"></i>
                                    <span>University Circular</span>
                                </a>
                                <a href="https://erp.aktu.ac.in/Login.aspx">
                                    <i class="fa fa-globe"></i>
                                    <span>University ERP Login</span>
                                </a>
                                <a href="https://erp.aktu.ac.in/webpages/oneview/oneview.aspx">
                                    <i class="fa fa-mortar-board"></i>
                                    <span>University Result</span>
                                </a>
                                <a href="https://aktu.ac.in/syllabus.html">
                                    <i class="fa fa-list-alt"></i>
                                    <span>University Syllabus</span>
                                </a>
                                <a href="https://aktu.ac.in/nptel_online_certificate.html">
                                    <i class="fa fa-certificate"></i>
                                    <span>NPTEL Certification</span>
                                </a>
                                <a href="https://aktu.ac.in/e-learning.html">
                                    <i class="fa fa-book"></i>
                                    <span>E- Learning</span>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <!-- header right menu end -->
                </div>

            </div>
        </header>
        <!-- header end -->
        <!-- Left sidebar menu start -->
        <div class="ttr-sidebar">
            <div class="ttr-sidebar-wrapper content-scroll">
                <!-- side menu logo start -->
                <div class="ttr-sidebar-logo">
                    <a href="#"><img alt="" src="assets/images/logo.png" width="122" height="27"></a>
                    <!-- <div class="ttr-sidebar-pin-button" title="Pin/Unpin Menu">
                            <i class="material-icons ttr-fixed-icon">gps_fixed</i>
                            <i class="material-icons ttr-not-fixed-icon">gps_not_fixed</i>
                    </div> -->
                    <div class="ttr-sidebar-toggle-button">
                        <i class="ti-arrow-left"></i>
                    </div>
                </div>
                <!-- side menu logo end -->
                <!-- sidebar menu start -->
                <nav class="ttr-sidebar-navi">
                    <ul>
                        <li>
                            <a href="index.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-home"></i></span>
                                <span class="ttr-label">Dashboard</span>
                            </a>
                        </li>
                        <li>
                            <a href="courses.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-book"></i></span>
                                <span class="ttr-label">Courses</span>
                            </a>
                        </li>
                        <li>
                            <a href="mails.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-email"></i></span>
                                <span class="ttr-label">Mailbox</span>

                            </a>

                        </li>
                        <li>
                            <a href="basic-calendar.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-calendar"></i></span>
                                <span class="ttr-label">Academic Calender</span>

                            </a>

                        </li>

                        <li>
                            <a href="timeTable.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-time"></i></span>
                                <span class="ttr-label">Time Table</span>

                            </a>

                        </li>



                        <li>
                            <a href="result.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-bookmark-alt"></i></span>
                                <span class="ttr-label">Project/ Assignment</span>
                            </a>
                        </li>
                        <li>
                            <a href="circular.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-comments"></i></span>
                                <span class="ttr-label">Circulars</span>
                            </a>
                        </li>
                        <li>
                            <a href="faculty.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-face-smile"></i></span>
                                <span class="ttr-label">Faculty Members</span>
                            </a>
                        </li>
                        <li>
                            <a href="user-profile.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-user"></i></span>
                                <span class="ttr-label">My Profile</span>

                            </a>

                        </li>
                        <li class="ttr-seperate"></li>
                    </ul>
                    <!-- sidebar menu end -->
                </nav>
                <!-- sidebar menu end -->
            </div>
        </div>
        <!-- Left sidebar menu end -->

        <!--Main container start -->
        <main class="ttr-wrapper">
            <div class="container-fluid">
                <div class="db-breadcrumb">
                    <h4 class="breadcrumb-title">Dashboard</h4>
                    <ul class="db-breadcrumb-list">
                        <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                        <li>Dashboard</li>
                    </ul>
                </div>	
                <!-- Card -->
                <div class="row">
                    <div class="col-md-6 col-lg-3 col-xl-3 col-sm-6 col-12">
                        <div class="widget-card widget-bg1">					 
                            <div class="wc-item">
                                <h4 class="wc-title">
                                    Total Notes
                                </h4>
                                <span class="wc-des">
                                    PDF, PPT,<br> Doc, Images
                                </span>
                                <span class="wc-stats">
                                    <span class="counter"><%= totalNotes%></span>
                                </span>		


                            </div>				      
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 col-xl-3 col-sm-6 col-12">
                        <div class="widget-card widget-bg2">					 
                            <div class="wc-item">
                                <h4 class="wc-title">
                                    Total Tutorials
                                </h4>
                                <span class="wc-des">
                                    Youtube <br> Drive
                                </span>
                                <span class="wc-stats counter">
                                    <%= totalTutorial%> 
                                </span>		

                            </div>				      
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 col-xl-3 col-sm-6 col-12">
                        <div class="widget-card widget-bg3">					 
                            <div class="wc-item">
                                <h4 class="wc-title">
                                    Faculty Members 
                                </h4>
                                <span class="wc-des">
                                    Teachers <br> Staffs 
                                </span>
                                <span class="wc-stats counter">
                                    <%= totalStaff%>
                                </span>		

                            </div>				      
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 col-xl-3 col-sm-6 col-12">
                        <div class="widget-card widget-bg4">					 
                            <div class="wc-item">
                                <h4 class="wc-title">
                                    Circular
                                </h4>
                                <span class="wc-des">
                                    From Admin <br> HOD, Faculty
                                </span>
                                <span class="wc-stats counter">
                                    <%= circular%>
                                </span>		


                            </div>				      
                        </div>
                    </div>
                </div>
                                <br>
                               
                <!-- Card END -->
             <ul class="pinboards col-7" style="align-content: center">
                    <li>
                     <div style="width:270%;height: 670px ; margin: auto;align-self: center">
                            <small id="date">March 26, 2017</small>
                            <center> <h4 style="color: blue">Welcome To EduSHEAT</h4> </center>
                            <br>
                            <center>  <h2 style="color: brown">SHEAT is Group of Institution which provides various courses to the students.</h2></center>
                             <br>
                            <center>  <h2>EduSHEAT is developed as a college project by seeing the pandemic situation due to COVID-19. It provides all those resourcse to the student which they required during college like Notes, Tutorial Videos, Notice, Circulars, Assignment/ Project Submission etc. Student can receive all their information and study material which is uploaded by faculty staff of the college.  </h2></center>
                            
                            <br>
                            <center>  <h5 style="color: #8699fb"> <a href="../profile.jsp" target="_blank"> Developed By: Deepak Patel :: B.tech :: 4th Year :: Computer Science & Engineering :: 1638410011</a> </h5></center>
                            
                            
                            </div>
                       
                    </li>

                </ul>

                <!-- Your Profile Views Chart END-->
                <!--Modal: modalPush-->
                <div class="modal fade" id="modalPush" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-notify modal-info" role="document">
                        <!--Content-->
                        <div class="modal-content text-center ">
                            <!--Header-->
                            <div class="modal-header d-flex justify-content-center">
                                <p class="heading" style="font-family: sans-serif"  ><h3 style="color: blue; ">Department Notice</h3></p>
                            </div>

                            <!--Body-->
                            <div class="modal-body row">

                                <div class="modal-body col-sm-4">

                                    <i style="color: red;" class="ringingBell fa fa-bell fa-4x animated rotateIn mb-4"></i>

                                </div>
                                <div class="col-sm-8">
                                    <center>  <h3 style="color: sienna"><%= title%></h3></center> 
                                    <center> <p><%= notice%></p></center>
                                </div>

                            </div>

                            <!--Footer-->
                            <div class="modal-footer flex-center">

                                <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal" style="">Ok</a>
                            </div>
                        </div>
                        <!--/.Content-->
                    </div>
                </div>
                <!--Modal: modalPush-->





            </div>
        </main>

        <div class="ttr-overlay"></div>

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
        <script src='assets/vendors/scroll/scrollbar.min.js'></script>
        <script src="assets/js/functions.js"></script>
        <script src="assets/vendors/chart/chart.min.js"></script>
        <script src="assets/js/admin.js"></script>
        <script src='assets/vendors/calendar/moment.min.js'></script>
        <script src='assets/vendors/calendar/fullcalendar.js'></script>
        <script src='assets/vendors/switcher/switcher.js'></script>
        <script>
            $(document).ready(function () {

                $('#calendar').fullCalendar({
                    header: {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay,listWeek'
                    },
                    defaultDate: '2019-03-12',
                    navLinks: true, // can click day/week names to navigate views

                    weekNumbers: true,
                    weekNumbersWithinDays: true,
                    weekNumberCalculation: 'ISO',

                    editable: true,
                    eventLimit: true, // allow "more" link when too many events
                    events: [
                        {
                            title: 'All Day Event',
                            start: '2019-03-01'
                        },
                        {
                            title: 'Long Event',
                            start: '2019-03-07',
                            end: '2019-03-10'
                        },
                        {
                            id: 999,
                            title: 'Repeating Event',
                            start: '2019-03-09T16:00:00'
                        },
                        {
                            id: 999,
                            title: 'Repeating Event',
                            start: '2019-03-16T16:00:00'
                        },
                        {
                            title: 'Conference',
                            start: '2019-03-11',
                            end: '2019-03-13'
                        },
                        {
                            title: 'Meeting',
                            start: '2019-03-12T10:30:00',
                            end: '2019-03-12T12:30:00'
                        },
                        {
                            title: 'Lunch',
                            start: '2019-03-12T12:00:00'
                        },
                        {
                            title: 'Meeting',
                            start: '2019-03-12T14:30:00'
                        },
                        {
                            title: 'Happy Hour',
                            start: '2019-03-12T17:30:00'
                        },
                        {
                            title: 'Dinner',
                            start: '2019-03-12T20:00:00'
                        },
                        {
                            title: 'Birthday Party',
                            start: '2019-03-13T07:00:00'
                        },
                        {
                            title: 'Click for Google',
                            url: 'http://google.com/',
                            start: '2019-03-28'
                        }
                    ]
                });

            });

        </script>
        <script>
            var d = new Date();
            document.getElementById("date").innerHTML = d;
        </script>
        <script>




            jQuery(document).ready(function () {





                $("#modalPush").modal('show');






                var ttrevapi;
                var tpj = jQuery;
                if (tpj("#rev_slider_486_1").revolution == undefined) {
                    revslider_showDoubleJqueryError("#rev_slider_486_1");
                } else {
                    ttrevapi = tpj("#rev_slider_486_1").show().revolution({
                        sliderType: "standard",
                        jsFileLocation: "assets/vendors/revolution/js/",
                        sliderLayout: "fullwidth",
                        dottedOverlay: "none",
                        delay: 9000,
                        navigation: {
                            keyboardNavigation: "on",
                            keyboard_direction: "horizontal",
                            mouseScrollNavigation: "off",
                            mouseScrollReverse: "default",
                            onHoverStop: "on",
                            touch: {
                                touchenabled: "on",
                                swipe_threshold: 75,
                                swipe_min_touches: 1,
                                swipe_direction: "horizontal",
                                drag_block_vertical: false
                            }
                            ,
                            arrows: {
                                style: "uranus",
                                enable: true,
                                hide_onmobile: false,
                                hide_onleave: false,
                                tmp: '',
                                left: {
                                    h_align: "left",
                                    v_align: "center",
                                    h_offset: 10,
                                    v_offset: 0
                                },
                                right: {
                                    h_align: "right",
                                    v_align: "center",
                                    h_offset: 10,
                                    v_offset: 0
                                }
                            },

                        },
                        viewPort: {
                            enable: true,
                            outof: "pause",
                            visible_area: "80%",
                            presize: false
                        },
                        responsiveLevels: [1240, 1024, 778, 480],
                        visibilityLevels: [1240, 1024, 778, 480],
                        gridwidth: [1240, 1024, 778, 480],
                        gridheight: [768, 600, 600, 600],
                        lazyType: "none",
                        parallax: {
                            type: "scroll",
                            origo: "enterpoint",
                            speed: 400,
                            levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 46, 47, 48, 49, 50, 55],
                            type: "scroll",
                        },
                        shadow: 0,
                        spinner: "off",
                        stopLoop: "off",
                        stopAfterLoops: -1,
                        stopAtSlide: -1,
                        shuffle: "off",
                        autoHeight: "off",
                        hideThumbsOnMobile: "off",
                        hideSliderAtLimit: 0,
                        hideCaptionAtLimit: 0,
                        hideAllCaptionAtLilmit: 0,
                        debugMode: false,
                        fallbacks: {
                            simplifyAll: "off",
                            nextSlideOnWindowFocus: "off",
                            disableFocusListener: false,
                        }
                    });
                }
            });
        </script>
    </body>


</html>