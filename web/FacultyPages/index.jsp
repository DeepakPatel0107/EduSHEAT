<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<!DOCTYPE html>
<html lang="en">
  <%
        String totalStudents="";
        String totalStaff="";
        String totalNotes="";
        String totalTutorial="";
         String notice = "";
        String title = "";
        Connection conn = new DBConnection().getConnection();
        Statement stmt = conn.createStatement();
        String query133 = "SELECT count(regId) FROM student_registration";
        ResultSet rs133 = stmt.executeQuery(query133);
        while (rs133.next()) {
        totalStudents=rs133.getString(1);
        }
        
String query1 = "SELECT count(regId) FROM staff_registration";
        ResultSet rs1 = stmt.executeQuery(query1);
        while (rs1.next()) {
        totalStaff=rs1.getString(1);
        }
        
String query11 = "SELECT count(title) FROM notes";
        ResultSet rs11 = stmt.executeQuery(query11);
        while (rs11.next()) {
        totalNotes=rs11.getString(1);
        }


String query12= "SELECT count(title) FROM tutorialvideo";
        ResultSet rs12 = stmt.executeQuery(query12);
        while (rs12.next()) {
        totalTutorial=rs12.getString(1);
        }
 String query122 = "SELECT title, content FROM adminnotice where sNo=1";
        ResultSet rs122 = stmt.executeQuery(query122);
        while (rs122.next()) {
            title = rs122.getString(1);
            notice = rs122.getString(2);
        }


    %>

    <head>

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
                height: 510px;
                width: 910px;
                padding: 1em;
                -moz-box-shadow: 5px 5px 7px #212121;
                -webkit-box-shadow: 5px 5px 7px rgba(33, 33, 33, 0.7);
                box-shadow: 5px 5px 7px rgba(33, 33, 33, 0.7);
                -moz-transition: -moz-transform 0.15s linear;
                -o-transition: -o-transform 0.15s linear;
                -webkit-transition: -webkit-transform 0.15s linear;
            }


        </style>
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






        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>EduSHEAT : Learn To Lead</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="vendors/iconfonts/font-awesome/css/all.min.css">
        <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
        <link rel="stylesheet" href="vendors/css/vendor.bundle.addons.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- endinject -->
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
    </head>
    <body id="bg">



      <!--Modal: modalPush-->
                <div class="modal fade" id="modalPush" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-notify modal-info" role="document">
                        <!--Content-->
                        <div class="modal-content text-center ">
                            <!--Header-->
                            <div class="modal-header d-flex justify-content-center">
                                <p class="heading" style="font-family: sans-serif"  ><h3 style="color: blue; ">Administration Notice</h3></p>
                            </div>

                            <!--Body-->
                            <div class="modal-body row">

                                <div class="modal-body col-sm-4">

                                    <i style="color: red;" class="ringingBell fa fa-bell fa-4x animated rotateIn mb-4"></i>

                                </div>
                                <div class="col-sm-8">
                                    <center>  <h3 style="color: sienna"><%= title%></h3></center> 
                                    <br>
                                    
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






        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row default-layout-navbar">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo"><img src="images/logo.png" alt="logo"/></a>

                </div>
                <div class="navbar-menu-wrapper d-flex align-items-stretch">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="fas fa-bars"></span>
                    </button>
                    <ul class="navbar-nav">
                        <li class="nav-item nav-search d-none d-md-flex">
                            <div class="nav-link">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">

                                        </span>
                                    </div>

                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav navbar-nav-right">



                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                                <img src="images/faces/face5.jpg" alt="profile"/>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">

                                <div class="dropdown-divider"></div>
                               <a class="dropdown-item" href="../logout.jsp">
                                    <i class="fas fa-power-off text-primary"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="fas fa-bars"></span>
                    </button>
                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_settings-panel.html -->
                <div class="theme-setting-wrapper">
                    <div id="settings-trigger"><i class="fas fa-fill-drip"></i></div>
                    <div id="theme-settings" class="settings-panel">
                        <i class="settings-close fa fa-times"></i>
                        <p class="settings-heading">SIDEBAR SKINS</p>
                        <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
                        <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
                        <p class="settings-heading mt-2">HEADER SKINS</p>
                        <div class="color-tiles mx-0 px-4">
                            <div class="tiles primary"></div>
                            <div class="tiles success"></div>
                            <div class="tiles warning"></div>
                            <div class="tiles danger"></div>
                            <div class="tiles info"></div>
                            <div class="tiles dark"></div>
                            <div class="tiles default"></div>
                        </div>
                    </div>
                </div>

                <!-- partial -->
                <!-- partial:partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                                              <%
                                                                                   

                                                                                   
                                                                                    String query13 = "SELECT * FROM staff_registration where regId= '"+session.getAttribute("admin_id") +"'";
                                                                                    ResultSet rs13 = stmt.executeQuery(query13);

                                                                                    while (rs13.next()) {
                                                                                %>
                        <li class="nav-item nav-profile">
                            <div class="nav-link">
                                <div class="profile-image">
                                    
                                    <img src="../<%= rs13.getString("image_file") %>/<%= rs13.getString("image_name") %>" alt="image"/>
                                </div>
                                <div class="profile-name">
                                    <p class="name">
                                        Welcome <%= rs13.getString("name") %>
                                    </p>
                                    <p class="designation">
                                       <%= rs13.getString("post") %>
                                    
                                </div>
                            </div>
                        </li>
                        <%
                                                                                    }

                                                                                %>
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">
                                <i class="fa fa-home menu-icon"></i>
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="registerStaff.jsp">
                                <i class="fa fa-users menu-icon"></i>
                                <span class="menu-title">Register Faculty Staffs</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="registerStudents.jsp">
                                <i class="far fa-address-card menu-icon"></i>
                                <span class="menu-title">Register Students</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="studyMaterials.jsp">
                                <i class="fa fa-graduation-cap menu-icon"></i>
                                <span class="menu-title">Study Material Upload</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="timeTable.jsp">
                                <i class="fa fa-clock menu-icon"></i>
                                <span class="menu-title">Time Table</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="course.jsp">
                                <i class="fa fa-book-reader menu-icon"></i>
                                <span class="menu-title">Course Subjects</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="marks.jsp">
                                <i class="fa fa-edit menu-icon"></i>
                                 <span class="menu-title">Project/ Assignment</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="notices.jsp">
                                <i class="fa fa-bullhorn menu-icon"></i>
                                <span class="menu-title">Notice Board</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="mails.jsp">
                                <i class="fa fa-envelope menu-icon"></i>
                                <span class="menu-title">Mail</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="academicCalender.jsp">
                                <i class="fa fa-calendar menu-icon"></i>
                                <span class="menu-title">Academic Timeline</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="circulars.jsp">
                                <i class="fa fa-bell menu-icon"></i>
                                <span class="menu-title">Circulars</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="profile.jsp">
                                <i class="fa fa-user menu-icon"></i>
                                <span class="menu-title">My Profile</span>
                            </a>
                        </li>

                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="page-header">
                            <h3 class="page-title">
                                Dashboard
                            </h3>
                        </div>


                        <div class="row grid-margin">
                            <div class="col-12">
                                <div class="card card-statistics">
                                    <div class="card-body">
                                        <div class="d-flex flex-column flex-md-row align-items-center justify-content-between">
                                            <div class="statistics-item">
                                                <p>
                                                    <i class="icon-sm fa fa-address-card mr-2"></i>
                                                    Total Students
                                                </p>
                                                <h2><%= totalStudents %></h2>

                                            </div>
                                            <div class="statistics-item">
                                                <p>
                                                    <i class="icon-sm fas fa-users mr-2"></i>
                                                    Total Staffs
                                                </p>
                                                <h2><%= totalStaff %></h2>

                                            </div>

                                            <div class="statistics-item">
                                                <p>
                                                    <i class="icon-sm fas fa-book mr-2"></i>
                                                    Total Notes
                                                </p>
                                                <h2><%= totalNotes %></h2>

                                            </div>
                                            <div class="statistics-item">
                                                <p>
                                                    <i class="icon-sm fa fa-video mr-2"></i>
                                                    Total Tutorials
                                                </p>
                                                <h2><%= totalTutorial %></h2>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>  
                                                
                                                
                                                
                         <ul class="pinboards col-7" style="align-content: center">
                    <li>
                     <div style="width:270%;height: 470px ; margin: auto;align-self: center">
                            <small id="date">March 26, 2017</small>
                            <center> <h4>Welcome To EduSHEAT</h4> </center>
                            <br>
                          <center>  <h2>SHEAT is Group of Institution which provides various courses to the students.</h2></center>
                             <br>
                            <center>  <h2>EduSHEAT is developed as a college project by seeing the pandemic situation due to COVID-19. It provides all those resourcse to the student which they required during college like Notes, Tutorial Videos, Notice, Circulars, Assignment/ Project Submission etc. Student can receive all their information and study material which is uploaded by faculty staff of the college.  </h2></center>
                            <br>
                            <br>
                            <center>  <h5> <a href="../profile.jsp" target="_blank"> Developed By: Deepak Patel :: B.tech :: 4th Year :: Computer Science & Engineering :: 1638410011</a> </h5></center>
                            
                            
                            </div>
                       
                    </li>

                </ul>
                         
                    </div> 
                </div>
            </div>
        </div>





    </div>
    <!-- content-wrapper ends -->
    <!-- partial:partials/_footer.html -->
    <footer class="footer">
        <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block" ><b>** EduSHEAT: Learn To Lead :: Deepak Patel :: 1638410011 :: B.Tech :: 4th Year :: Final Year Project **</b> </span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"><b> thePatel</b> <i class="far fa-heart text-danger"></i></span>
        </div>
    </footer>
    <!-- partial -->
</div>
<!-- main-panel ends -->
</div>
<!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->

<!-- plugins:js -->
<script src="vendors/js/vendor.bundle.base.js"></script>
<script src="vendors/js/vendor.bundle.addons.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="js/off-canvas.js"></script>
<script src="js/hoverable-collapse.js"></script>
<script src="js/misc.js"></script>
<script src="js/settings.js"></script>
<script src="js/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="js/dashboard.js"></script>
<!-- End custom js for this page-->



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
