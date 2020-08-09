<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
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
                min-height: 80px;
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
    <body onload="details()">
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
                                <img id="proImg2" src="images/faces/face5.jpg" alt="profile"/>
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
                                <span class="menu-title">Academic TimeLine</span>
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
                        <div class="email-wrapper wrapper">
                            <div class="row align-items-stretch">
                                <div class="container">
                                    
                                    <div class="row grid-margin">
                                        <div class="col-lg-12">
                                            <div class="card">
                                                <div class="card-body">
                                    
                                    
                                    <div class="mail-box">
                                        <aside class="sm-side">
                                            <div class="user-head">
                                                                <%    String query132 = "SELECT * FROM staff_registration where regId= '" + session.getAttribute("admin_id") + "'";
                                        ResultSet rs132 = stmt.executeQuery(query132);

                                        while (rs132.next()) {
                                    %>
                                                                <a class="inbox-avatar" >
                                                                    <img id="myImg" width="135" hieght="400"   src="../<%= rs132.getString("image_file")%>/<%= rs132.getString("image_name")%>"  alt="image"/>
                                                                </a>
                                                                
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
                                                                <form action="../UploadFile" class="form-horizontal"  method="POST" enctype="multipart/form-data">
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
                                                                                    
                                                                                    String query11 = "SELECT * FROM admin_staff_login";
                                                                                    ResultSet rs11 = stmt.executeQuery(query11);

                                                                                    while (rs11.next()) {
                                                                                %>
                                                                                <option> <%= rs11.getString("regId")%> :: <%= rs11.getString("name")%> </option>
                                                                                <%
                                                                                    }

                                                                                %>
                                                                                <%                                                                                    String mailId = request.getParameter("mailId");

                                                                                    String query1 = "SELECT * FROM student_registration";
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
                                                    <a href="mails.jsp"><i class="fa fa-inbox"></i> Inbox <span class="label label-danger pull-right">2</span></a>

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
                                                <h2>Trash</h2>
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
                                                        <%                                                            int i = 0;

                                                            String query = "SELECT * FROM trashmail where mailto like '"+session.getAttribute("admin_id")+"%'";
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
                                                        
                                         </div>
                                            </div>
                                        </div>
                                    </div>                
                                                        
                                                        
                                                        
                                                        
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <!-- partial -->
            </div>
        </div>
    </div>


    <script>

        function OpenMail() {
            location.href = "readMail.jsp";
        }



        function details()
        {

            $.ajax({
                url: "GetProfileDetails.jsp",
                type: 'POST',
                data: {},
                success: function (msg) {

                    var name = msg.split(",")[0].trim();
                    var father = msg.split(",")[1].trim();
                    var mother = msg.split(",")[2].trim();
                    var dob = msg.split(",")[3].trim();
                    var nation = msg.split(",")[4].trim();
                    var image_name = msg.split(",")[5].trim();
                    var image_file = msg.split(",")[6].trim();
                    var education = msg.split(",")[7].trim();
                    var university = msg.split(",")[8].trim();
                    var course = msg.split(",")[9].trim();
                    var branch = msg.split(",")[10].trim();
                    var enrollmentNo = msg.split(",")[11].trim();
                    var college_address = msg.split(",")[12].trim();
                    var college_district = msg.split(",")[13].trim();
                    var college_state = msg.split(",")[14].trim();
                    var address = msg.split(",")[15].trim();
                    var district = msg.split(",")[16].trim();
                    var state = msg.split(",")[17].trim();
                    var pincode = msg.split(",")[18].trim();
                    var email = msg.split(",")[19].trim();
                    var mobile = msg.split(",")[20].trim();
                    var date = msg.split(",")[21].trim();
                    var update = date.substring(0, 10);


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
