<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<!DOCTYPE html>
<html lang="en">


<head>
<style>



            .mail-box {
                border-collapse: collapse;
                border-spacing: 0;
                display: table;
                table-layout: fixed;
                width: 100%;
            }
            .mail-box aside {
                display: table-cell;
                float: none;
                height: 100%;
                padding: 0;
                vertical-align: top;
            }
            .mail-box .sm-side {
                background: none repeat scroll 0 0 #e5e8ef;
                border-radius: 4px 0 0 4px;
                width: 25%;
            }
            .mail-box .lg-side {
                background: none repeat scroll 0 0 #fff;
                border-radius: 0 4px 4px 0;
                width: 75%;
            }
            .mail-box .sm-side .user-head {
                background: none repeat scroll 0 0 #00a8b3;
                border-radius: 4px 0 0;
                color: #fff;
                min-height: 110px;
                padding: 10px;
               
            }
            .user-head .inbox-avatar {
                float: left;
                width: 65px;
            }
            .user-head .inbox-avatar img {
                border-radius: 4px;
            }
            .user-head .user-name {
                display: inline-block;
                margin: 0 0 0 10px;
            }
            .user-head .user-name h5 {
                font-size: 14px;
                font-weight: 300;
                margin-bottom: 0;
                margin-top: 15px;
            }
            .user-head .user-name h5 a {
                color: #fff;
            }
            .user-head .user-name span a {
                color: #87e2e7;
                font-size: 12px;
            }
            a.mail-dropdown {
                background: none repeat scroll 0 0 #80d3d9;
                border-radius: 2px;
                color: #01a7b3;
                font-size: 10px;
                margin-top: 20px;
                padding: 3px 5px;
            }
            .inbox-body {
                padding: 20px;
            }
            .btn-compose {
                background: none repeat scroll 0 0 #ff6c60;
                color: #fff;
                padding: 12px 0;
                text-align: center;
                width: 100%;
            }
            .btn-compose:hover {
                background: none repeat scroll 0 0 #f5675c;
                color: #fff;
            }
            ul.inbox-nav {
                display: inline-block;
                margin: 0;
                padding: 0;
                width: 100%;
            }
            .inbox-divider {
                border-bottom: 1px solid #d5d8df;
            }
            ul.inbox-nav li {
                display: inline-block;
                line-height: 45px;
                width: 100%;
            }
            ul.inbox-nav li a {
                color: #6a6a6a;
                display: inline-block;
                line-height: 45px;
                padding: 0 20px;
                width: 100%;
            }
            ul.inbox-nav li a:hover, ul.inbox-nav li.active a, ul.inbox-nav li a:focus {
                background: none repeat scroll 0 0 #d5d7de;
                color: #6a6a6a;
            }
            ul.inbox-nav li a i {
                color: #6a6a6a;
                font-size: 16px;
                padding-right: 10px;
            }
            ul.inbox-nav li a span.label {
                margin-top: 13px;
            }
            ul.labels-info li h4 {
                color: #5c5c5e;
                font-size: 13px;
                padding-left: 15px;
                padding-right: 15px;
                padding-top: 5px;
                text-transform: uppercase;
            }
            ul.labels-info li {
                margin: 0;
            }
            ul.labels-info li a {
                border-radius: 0;
                color: #6a6a6a;
            }
            ul.labels-info li a:hover, ul.labels-info li a:focus {
                background: none repeat scroll 0 0 #d5d7de;
                color: #6a6a6a;
            }
            ul.labels-info li a i {
                padding-right: 10px;
            }
            .nav.nav-pills.nav-stacked.labels-info p {
                color: #9d9f9e;
                font-size: 11px;
                margin-bottom: 0;
                padding: 0 22px;
            }
            .inbox-head {
                background: none repeat scroll 0 0 #41cac0;
                border-radius: 0 4px 0 0;
                color: #fff;
                min-height: 80px;
                padding: 20px;
            }
            .inbox-head h3 {
                display: inline-block;
                font-weight: 300;
                margin: 0;
                padding-top: 6px;
            }
            .inbox-head .sr-input {
                border: medium none;
                border-radius: 4px 0 0 4px;
                box-shadow: none;
                color: #8a8a8a;
                float: left;
                height: 40px;
                padding: 0 10px;
            }
            .inbox-head .sr-btn {
                background: none repeat scroll 0 0 #00a6b2;
                border: medium none;
                border-radius: 0 4px 4px 0;
                color: #fff;
                height: 40px;
                padding: 0 20px;
            }
            .table-inbox {
                border: 1px solid #d3d3d3;
                margin-bottom: 0;
            }
            .table-inbox tr td {
                padding: 12px !important;
            }
            .table-inbox tr td:hover {
                cursor: pointer;
            }
            .table-inbox tr td .fa-star.inbox-started, .table-inbox tr td .fa-star:hover {
                color: #f78a09;
            }
            .table-inbox tr td .fa-star {
                color: #d5d5d5;
            }
            .table-inbox tr.unread td {
                background: none repeat scroll 0 0 #f7f7f7;
                font-weight: 600;
            }
            ul.inbox-pagination {
                float: right;
            }
            ul.inbox-pagination li {
                float: left;
            }
            .mail-option {
                display: inline-block;
                margin-bottom: 10px;
                width: 100%;
            }
            .mail-option .chk-all, .mail-option .btn-group {
                margin-right: 5px;
            }
            .mail-option .chk-all, .mail-option .btn-group a.btn {
                background: none repeat scroll 0 0 #fcfcfc;
                border: 1px solid #e7e7e7;
                border-radius: 3px !important;
                color: #afafaf;
                display: inline-block;
                padding: 5px 10px;
            }
            .inbox-pagination a.np-btn {
                background: none repeat scroll 0 0 #fcfcfc;
                border: 1px solid #e7e7e7;
                border-radius: 3px !important;
                color: #afafaf;
                display: inline-block;
                padding: 5px 15px;
            }
            .mail-option .chk-all input[type="checkbox"] {
                margin-top: 0;
            }
            .mail-option .btn-group a.all {
                border: medium none;
                padding: 0;
            }
            .inbox-pagination a.np-btn {
                margin-left: 5px;
            }
            .inbox-pagination li span {
                display: inline-block;
                margin-right: 5px;
                margin-top: 7px;
            }
            .fileinput-button {
                background: none repeat scroll 0 0 #eeeeee;
                border: 1px solid #e6e6e6;
            }
            .inbox-body .modal .modal-body input, .inbox-body .modal .modal-body textarea {
                border: 1px solid #e6e6e6;
                box-shadow: none;
            }
            .btn-send, .btn-send:hover {
                background: none repeat scroll 0 0 #00a8b3;
                color: #fff;
            }
            .btn-send:hover {
                background: none repeat scroll 0 0 #009da7;
            }
            .modal-header h4.modal-title {
                font-family: "Open Sans",sans-serif;
                font-weight: 300;
            }
            .modal-body label {
                font-family: "Open Sans",sans-serif;
                font-weight: 400;
            }
            .heading-inbox h4 {
                border-bottom: 1px solid #ddd;
                color: #444;
                font-size: 18px;
                margin-top: 20px;
                padding-bottom: 10px;
            }
            .sender-info {
                margin-bottom: 20px;
            }
            .sender-info img {
                height: 30px;
                width: 30px;
            }
            .sender-dropdown {
                background: none repeat scroll 0 0 #eaeaea;
                color: #777;
                font-size: 10px;
                padding: 0 3px;
            }
            .view-mail a {
                color: #ff6c60;
            }
            .attachment-mail {
                margin-top: 30px;
            }
            .attachment-mail ul {
                display: inline-block;
                margin-bottom: 30px;
                width: 100%;
            }
            .attachment-mail ul li {
                float: left;
                margin-bottom: 10px;
                margin-right: 10px;
                width: 150px;
            }
            .attachment-mail ul li img {
                width: 100%;
            }
            .attachment-mail ul li span {
                float: right;
            }
            .attachment-mail .file-name {
                float: left;
            }
            .attachment-mail .links {
                display: inline-block;
                width: 100%;
            }

            .fileinput-button {
                float: left;
                margin-right: 4px;
                overflow: hidden;
                position: relative;
            }
            .fileinput-button input {
                cursor: pointer;
                direction: ltr;
                font-size: 23px;
                margin: 0;
                opacity: 0;
                position: absolute;
                right: 0;
                top: 0;
                transform: translate(-300px, 0px) scale(4);
            }
            .fileupload-buttonbar .btn, .fileupload-buttonbar .toggle {
                margin-bottom: 5px;
            }
            .files .progress {
                width: 200px;
            }
            .fileupload-processing .fileupload-loading {
                display: block;
            }
            * html .fileinput-button {
                line-height: 24px;
                margin: 1px -3px 0 0;
            }
            * + html .fileinput-button {
                margin: 1px 0 0;
                padding: 2px 15px;
            }
            @media (max-width: 767px) {
                .files .btn span {
                    display: none;
                }
                .files .preview * {
                    width: 40px;
                }
                .files .name * {
                    display: inline-block;
                    width: 80px;
                    word-wrap: break-word;
                }
                .files .progress {
                    width: 20px;
                }
                .files .delete {
                    width: 60px;
                }
            }
            ul {
                list-style-type: none;
                padding: 0px;
                margin: 0px;
            }



        </style>
	<!-- META ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />

	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="../error-404.html" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>EduSHEAT : Learn To Lead</title>
	
	
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
					<a href="index.html" class="ttr-logo">
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
						<a href="../index.html" class="ttr-material-button ttr-submenu-toggle">HOME</a>
					</li>
					 <li>
                                            <a href="../logout.jsp" class="ttr-material-button ttr-submenu-toggle">Logout </a>
						
					</li>
				</ul>
				<!-- header left menu end -->
			</div>
                         <%
                                                                                    String mailId = request.getParameter("mailId");

                                                                                    Connection conn = new DBConnection().getConnection();
                                                                                    Statement stmt = conn.createStatement();
                                                                                    String query13 = "SELECT * FROM student_registration where regId= '"+session.getAttribute("admin_id") +"'";
                                                                                    ResultSet rs13 = stmt.executeQuery(query13);

                                                                                    while (rs13.next()) {
                                                                                %>
			<div class="ttr-header-right ttr-with-seperator">
				<!-- header right menu start -->
				<ul class="ttr-header-navigation">
					
					
					<li>
						<a href="#" class="ttr-material-button ttr-submenu-toggle"><span class="ttr-user-avatar"><img alt=""  src="../<%= rs13.getString("image_file") %>/<%= rs13.getString("image_name") %>"  width="32" height="32"></span></a>
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
				<h4 class="breadcrumb-title">Mailbox</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>Mailbox</li>
				</ul>
			</div>	
			 <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="email-wrapper wrapper">
                            <div class="row align-items-stretch">
                                <div class="container">



                                    <div class="mail-box">
                                        <aside class="sm-side">
                                            <div class="user-head">
                                                
                                                    <img id="myImg" width="135" hieght="400"   src="../<%= rs13.getString("image_file") %>/<%= rs13.getString("image_name") %>"  alt="image"/>
                                                
                                             
                                            </div>
<%
                                                                                    }

                                                                                %>

                                            <div class="inbox-body">
                                                <a href="#myModal" data-toggle="modal" title="Compose" class="btn btn-compose">
                                                    Compose
                                                </a>
                                                <!-- Modal -->
                                                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade" style="display: none;">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">

                                                                <h4 class="modal-title">Compose</h4>
                                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                            </div>
                                                            <div class="modal-body">





                                                                <form action="../UploadFile2" class="form-horizontal"  method="POST" enctype="multipart/form-data">
                                                                    <div class="form-group">
                                                                        <label class="col-lg-2 control-label">From</label>
                                                                        <div class="col-lg-12">
                                                                            <input type="text" placeholder="" id="mailfrom" name="mailfrom" class="form-control " value="deepakpatel">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-lg-2 control-label">To</label>
                                                                        <div class="col-lg-12">
                                                                            <select type="text" placeholder="" id="mailto" name="mailto" class="form-control ">

                                                                                <%
                                                                                    
                                                                                    String query1 = "SELECT * FROM staff_registration";
                                                                                    ResultSet rs1 = stmt.executeQuery(query1);

                                                                                    while (rs1.next()) {
                                                                                %>
                                                                                <option> <%= rs1.getString("regId")%> :: <%= rs1.getString("name")%> :: <%= rs1.getString("branch").substring(0, 3)%> </option>
                                                                                <%
                                                                                    }

                                                                                %>


                                                                            </select>

                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label class="col-lg-2 control-label">Subject</label>
                                                                        <div class="col-lg-12">
                                                                            <input type="text" placeholder="" id="subject" name="subject" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-lg-2 control-label">Message</label>
                                                                        <div class="col-lg-12">
                                                                            <textarea  rows="10" cols="30" class="form-control" id="msg" name="msg"></textarea>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-lg-offset-2 col-lg-10">
                                                                            <span class="btn green fileinput-button">
                                                                                <i class="fa fa-plus fa fa-white"></i>
                                                                                <span>Attachment</span>
                                                                                <input type="file" name="fileUpload" id="fileUpload" >
                                                                            </span>
                                                                            <button class="btn btn-send" type="submit">Send</button>
                                                                        </div>
                                                                    </div>
                                                                </form>







                                                            </div>
                                                        </div>
                                                        <!-- /.modal-content -->
                                                    </div>
                                                    <!-- /.modal-dialog -->
                                                </div>
                                                <!-- /.modal -->
                                            </div>


                                            <ul class="inbox-nav inbox-divider">
                                                <li class="active">
                                                    <a href="mails.jsp"><i class="fa fa-inbox"></i> Inbox </a>

                                                </li>
                                                <li>
                                                    <a href="sentMail.jsp"><i class="fa fa-paper-plane"></i> Sent Mail</a>
                                                </li>

                                                <li>
                                                    <a href="trashMail.jsp"><i class=" fa fa-trash"></i> Trash</a>
                                                </li>
                                            </ul>




                                        </aside>
                                        <aside class="lg-side">
                                            <div class="inbox-head">
                                                <h2>Inbox</h2>
                                                <form action="#" class="pull-right position">

                                                </form>
                                            </div>
                                            <div class="inbox-body">

                                                <table class="table table-inbox table-hover">
                                                    <thead style="background-color: #6666ff;color: white;">
                                                        <tr>
                                                            <th>Mail Id</th>                                                                
                                                            <th>From</th>
                                                            <th>Subject</th>
                                                            <th>Date</th>

                                                        </tr>
                                                    </thead>  
                                                    <tbody>



                                                        <%                                                             int i = 0;

                                                        
                                                            String query = "SELECT * FROM mail where mailto like '"+session.getAttribute("admin_id")+"%'";
                                                            ResultSet rs = stmt.executeQuery(query);
                                                            while (rs.next()) {
                                                        %>
                                                        <tr class="" onclick="mailRead(<%= rs.getString("mailId")%>)">
                                                            <td class="view-message  dont-show"><%= rs.getString("mailId")%></td>
                                                            <td class="view-message  dont-show"><%= rs.getString("mailfrom")%></td>
                                                            <td class="view-message "><%= rs.getString("subject")%></td>

                                                            <td class="view-message  text-right"> <%= rs.getString("date").substring(0, 10)%></td>
                                                        </tr>
                                                        <%
                                                            }
                                                        %>


                                                    </tbody>
                                                </table>
                                            </div>
                                        </aside>
                                    </div>


  <script>

        function mailRead(mailId)
        {
            location.href = "readMail.jsp?mailId=" + mailId;
        }



        function details()
        {

            $.ajax({
                url: "GetProfileDetails.jsp",
                type: 'POST',
                data: {},
                success: function (msg) {

                    var name = msg.split(",")[0].trim();

                    var image_name = msg.split(",")[5].trim();
                    var image_file = msg.split(",")[6].trim();

                    callSetValues(name, image_name, image_file);

                }

            });



            function callSetValues(name, image_name, image_file)
            {

                document.getElementById("userid").value = name;

                document.getElementById("myImg").src = "../" + image_file + "/" + image_name;
                document.getElementById("proImg1").src = "../" + image_file + "/" + image_name;
                document.getElementById("proImg2").src = "../" + image_file + "/" + image_name;

            }


        }

    </script>     

                                </div>
                            </div>
                        </div>
                    </div>
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
<script src='assets/vendors/switcher/switcher.js'></script>
<script>
	$(document).ready(function(){
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
</body>


</html>