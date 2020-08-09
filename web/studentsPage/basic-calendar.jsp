<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from educhamp.themetrades.com/demo/admin/basic-calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:11:35 GMT -->
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
	<!-- META ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
	
	<!-- DESCRIPTION -->
	<meta name="description" content="EduSHEAT : Learn To Lead" />
	
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="../error-404.html" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>EduSHEAT : Learn To Lead</title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
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
<body class="ttr-opened-sidebar ttr-pinned-sidebar">
	
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
						<img alt="" class="ttr-logo-mobile" src="assets/images/logo-mobile.png" width="30" height="30">
						<img alt="" class="ttr-logo-desktop" src="assets/images/logo-white.png" width="160" height="27">
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
                                             <%
                                                                                    String mailId = request.getParameter("mailId");

                                                                                    Connection conn = new DBConnection().getConnection();
                                                                                    Statement stmt = conn.createStatement();
                                                                                    String query13 = "SELECT * FROM student_registration where regId= '"+session.getAttribute("admin_id") +"'";
                                                                                    ResultSet rs13 = stmt.executeQuery(query13);

                                                                                    while (rs13.next()) {
                                                                                %>
						<a href="#" class="ttr-material-button ttr-submenu-toggle"><span class="ttr-user-avatar"><img alt="" src="../<%= rs13.getString("image_file") %>/<%= rs13.getString("image_name") %>" width="32" height="32"></span></a>
						<%
                                                                                    }

                                                                                %>
                                                <div class="ttr-header-submenu">
							<ul>
								<li><a href="user-profile.jsp">My profile</a></li>
								<li><a href="timeTable.jsp">Time Table</a></li>
								<li><a href="mailbox.jsp">Messages</a></li>
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
			<!--header search panel start -->
			<div class="ttr-search-bar">
				<form class="ttr-search-form">
					<div class="ttr-search-input-wrapper">
						<input type="text" name="qq" placeholder="search something..." class="ttr-search-input">
						<button type="submit" name="search" class="ttr-search-submit"><i class="ti-arrow-right"></i></button>
					</div>
					<span class="ttr-search-close ttr-search-toggle">
						<i class="ti-close"></i>
					</span>
				</form>
			</div>
			<!--header search panel end -->
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
		                	<span class="ttr-label">Dashborad</span>
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
				<h4 class="breadcrumb-title">Academic Calender</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>Academic Calender</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>Academic Calender</h4>
						</div>
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
					</div>
				</div>
				<!-- Your Profile Views Chart END-->
			</div>
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

  $(document).ready(function() {

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
</body>


</html>