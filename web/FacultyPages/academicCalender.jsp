<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Db.DBConnection"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <style>
body {	
  margin: 0;
  padding: 0;
  background: rgb(230,230,230);
  
  color: rgb(50,50,50);
  font-family: 'Open Sans', sans-serif;
  font-size: 112.5%;
  line-height: 1.6em;
}

/* ================ The Timeline ================ */

.timeline {
  position: relative;
  width: 660px;
  margin: 0 auto;
  margin-top: 20px;
  padding: 1em 0;
  list-style-type: none;
}

.timeline:before {
  position: absolute;
  left: 50%;
  top: 0;
  content: ' ';
  display: block;
  width: 6px;
  height: 100%;
  margin-left: -3px;
  background: rgb(80,80,80);
  background: -moz-linear-gradient(top, rgba(80,80,80,0) 0%, rgb(80,80,80) 8%, rgb(80,80,80) 92%, rgba(80,80,80,0) 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(30,87,153,1)), color-stop(100%,rgba(125,185,232,1)));
  background: -webkit-linear-gradient(top, rgba(80,80,80,0) 0%, rgb(80,80,80) 8%, rgb(80,80,80) 92%, rgba(80,80,80,0) 100%);
  background: -o-linear-gradient(top, rgba(80,80,80,0) 0%, rgb(80,80,80) 8%, rgb(80,80,80) 92%, rgba(80,80,80,0) 100%);
  background: -ms-linear-gradient(top, rgba(80,80,80,0) 0%, rgb(80,80,80) 8%, rgb(80,80,80) 92%, rgba(80,80,80,0) 100%);
  background: linear-gradient(to bottom, rgba(80,80,80,0) 0%, rgb(80,80,80) 8%, rgb(80,80,80) 92%, rgba(80,80,80,0) 100%);
  
  z-index: 5;
}

.timeline li {
  padding: 1em 0;
}

.timeline li:after {
  content: "";
  display: block;
  height: 0;
  clear: both;
  visibility: hidden;
}

.direction-l {
  position: relative;
  width: 300px;
  float: left;
  text-align: right;
}

.direction-r {
  position: relative;
  width: 300px;
  float: right;
}

.flag-wrapper {
  position: relative;
  display: inline-block;
  
  text-align: center;
}

.flag {
  position: relative;
  display: inline;
  background: rgb(248,248,248);
  padding: 6px 10px;
  border-radius: 5px;
  
  font-weight: 600;
  text-align: left;
}

.direction-l .flag {
  -webkit-box-shadow: -1px 1px 1px rgba(0,0,0,0.15), 0 0 1px rgba(0,0,0,0.15);
  -moz-box-shadow: -1px 1px 1px rgba(0,0,0,0.15), 0 0 1px rgba(0,0,0,0.15);
  box-shadow: -1px 1px 1px rgba(0,0,0,0.15), 0 0 1px rgba(0,0,0,0.15);
}

.direction-r .flag {
  -webkit-box-shadow: 1px 1px 1px rgba(0,0,0,0.15), 0 0 1px rgba(0,0,0,0.15);
  -moz-box-shadow: 1px 1px 1px rgba(0,0,0,0.15), 0 0 1px rgba(0,0,0,0.15);
  box-shadow: 1px 1px 1px rgba(0,0,0,0.15), 0 0 1px rgba(0,0,0,0.15);
}

.direction-l .flag:before,
.direction-r .flag:before {
  position: absolute;
  top: 50%;
  right: -40px;
  content: ' ';
  display: block;
  width: 12px;
  height: 12px;
  margin-top: -10px;
  background: #fff;
  border-radius: 10px;
  border: 4px solid rgb(255,80,80);
  z-index: 10;
}

.direction-r .flag:before {
  left: -40px;
}

.direction-l .flag:after {
  content: "";
  position: absolute;
  left: 100%;
  top: 50%;
  height: 0;
  width: 0;
  margin-top: -8px;
  border: solid transparent;
  border-left-color: rgb(248,248,248);
  border-width: 8px;
  pointer-events: none;
}

.direction-r .flag:after {
  content: "";
  position: absolute;
  right: 100%;
  top: 50%;
  height: 0;
  width: 0;
  margin-top: -8px;
  border: solid transparent;
  border-right-color: rgb(248,248,248);
  border-width: 8px;
  pointer-events: none;
}

.time-wrapper {
  display: inline;
  
  line-height: 1em;
  font-size: 0.66666em;
  color: rgb(250,80,80);
  vertical-align: middle;
}

.direction-l .time-wrapper {
  float: left;
}

.direction-r .time-wrapper {
  float: right;
}

.time {
  display: inline-block;
  padding: 4px 6px;
  background: rgb(248,248,248);
}

.desc {
  margin: 1em 0.75em 0 0;
  
  font-size: 0.77777em;
  font-style: italic;
  line-height: 1.5em;
}

.direction-r .desc {
  margin: 1em 0 0 0.75em;
}

/* ================ Timeline Media Queries ================ */

@media screen and (max-width: 660px) {

.timeline {
 	width: 100%;
	padding: 4em 0 1em 0;
}

.timeline li {
	padding: 2em 0;
}

.direction-l,
.direction-r {
	float: none;
	width: 100%;

	text-align: center;
}

.flag-wrapper {
	text-align: center;
}

.flag {
	background: rgb(255,255,255);
	z-index: 15;
}

.direction-l .flag:before,
.direction-r .flag:before {
  position: absolute;
  top: -30px;
	left: 50%;
	content: ' ';
	display: block;
	width: 12px;
	height: 12px;
	margin-left: -9px;
	background: #fff;
	border-radius: 10px;
	border: 4px solid rgb(255,80,80);
	z-index: 10;
}

.direction-l .flag:after,
.direction-r .flag:after {
	content: "";
	position: absolute;
	left: 50%;
	top: -8px;
	height: 0;
	width: 0;
	margin-left: -8px;
	border: solid transparent;
	border-bottom-color: rgb(255,255,255);
	border-width: 8px;
	pointer-events: none;
}

.time-wrapper {
	display: block;
	position: relative;
	margin: 4px 0 0 0;
	z-index: 14;
}

.direction-l .time-wrapper {
	float: none;
}

.direction-r .time-wrapper {
	float: none;
}

.desc {
	position: relative;
	margin: 1em 0 0 0;
	padding: 1em;
	background: rgb(245,245,245);
	-webkit-box-shadow: 0 0 1px rgba(0,0,0,0.20);
	-moz-box-shadow: 0 0 1px rgba(0,0,0,0.20);
	box-shadow: 0 0 1px rgba(0,0,0,0.20);
	
  z-index: 15;
}

.direction-l .desc,
.direction-r .desc {
	position: relative;
	margin: 1em 1em 0 1em;
	padding: 1em;
	
  z-index: 15;
}

}

@media screen and (min-width: 400px ?? max-width: 660px) {

.direction-l .desc,
.direction-r .desc {
	margin: 1em 4em 0 4em;
}

}

        </style>
        <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script> 
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        
 <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
  
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
                
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                          <%
                                                                                   

                                                                                    Connection conn = new DBConnection().getConnection();
                                                                                    Statement stmt = conn.createStatement();
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
                                Academic Timeline
                            </h3>
                        </div>



                        <div class="row grid-margin">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Academic Timeline</h4>

                                        <form id="studentRegister">
                                            
                                           <div id="calendar"></div>

                                           
                                           
                                           
                                          
<!-- The Timeline -->

<ul class="timeline">

	<!-- Item 1 -->
	<li>
		<div class="direction-r">
			<div class="flag-wrapper">
				<span class="flag">Addmission</span>
				<span class="time-wrapper"><span class="time">15 August 2019</span></span>
			</div>
			<div class="desc">Last date of admission</div>
		</div>
	</li>
  
	<!-- Item 2 -->
	<li>
		<div class="direction-l">
			<div class="flag-wrapper">
				<span class="flag">Submitting Admission List</span>
				<span class="time-wrapper"><span class="time">31 August 2019</span></span>
			</div>
			<div class="desc">Last date of submitting admission list of students to University (Newly Admitted).</div>
		</div>
	</li>
        
        <!-- Item 1 -->
	<li>
		<div class="direction-r">
			<div class="flag-wrapper">
				<span class="flag">Submission Enrollment Form</span>
				<span class="time-wrapper"><span class="time">30 September 2019</span></span>
			</div>
			<div class="desc">Last date of submitting Enrollment Form/ Exam Form for regular and carry over exams.</div>
		</div>
	</li>
  
	<!-- Item 2 -->
	<li>
		<div class="direction-l">
			<div class="flag-wrapper">
				<span class="flag">Submitting Examination Fee</span>
				<span class="time-wrapper"><span class="time">15 October 2019</span></span>
			</div>
			<div class="desc">Last date of submitting examination fee for both semester including carry over examination fee.</div>
		</div>
	</li>
        <!-- Item 1 -->
	<li>
		<div class="direction-r">
			<div class="flag-wrapper">
				<span class="flag">Submitting Sessional Marks</span>
				<span class="time-wrapper"><span class="time">05 December 2019</span></span>
			</div>
			<div class="desc">Last date of submitting sessional marks (Theory & Practical) to University.</div>
		</div>
	</li>
  
	<!-- Item 2 -->
	<li>
		<div class="direction-l">
			<div class="flag-wrapper">
				<span class="flag"> Odd Semester Theory Exam</span>
				<span class="time-wrapper"><span class="time">09-31 December 2019 <span></span>
			</div>
			<div class="desc">End semester theory examination.</div>
		</div>
	</li>
        <!-- Item 1 -->
	<li>
		<div class="direction-r">
			<div class="flag-wrapper">
				<span class="flag">Even Semester Theory Exam</span>
				<span class="time-wrapper"><span class="time">01-07 January 2020</span></span>
			</div>
			<div class="desc">End semester Practical examination.</div>
		</div>
	</li>
  
	<!-- Item 2 -->
	<li>
		<div class="direction-l">
			<div class="flag-wrapper">
				<span class="flag">Odd Semester Practical Exam</span>
				<span class="time-wrapper"><span class="time">31 May - 08 June 2020</span></span>
			</div>
			<div class="desc">End semester Practical examination.</div>
		</div>
	</li>
 
</ul>

                                           
                                           
                                           
                                           


                                        </form>
                                    </div>


                                </div>
                            </div>
                        </div>

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
</body>


</html>
