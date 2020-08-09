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
        Connection conn = new DBConnection().getConnection();
        Statement stmt = conn.createStatement();
        String query13 = "SELECT count(regId) FROM student_registration";
        ResultSet rs13 = stmt.executeQuery(query13);
        while (rs13.next()) {
        totalStudents=rs13.getString(1);
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


    %>







    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>EduSHEAT : Learn To Lead</title>
        
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
    <body>
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
                <jsp:include page="sidebar.jsp"/>
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





    
    <!-- content-wrapper ends -->
    <!-- partial:partials/_footer.html -->
    <footer class="footer">
        <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block" ><b>** EduSHEAT: Learn To Lead :: Deepak Patel :: 1638410011 :: B.Tech :: 4th Year :: Final Year Project **</b> </span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"><b> thePatel</b> <i class="far fa-heart text-danger"></i></span>
        </div>
    </footer>
   <script>
var d = new Date();
document.getElementById("date").innerHTML = d;
</script>
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
</body>


</html>
