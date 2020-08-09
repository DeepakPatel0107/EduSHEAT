<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from educhamp.themetrades.com/demo/admin/user-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:11:35 GMT -->
    <head>

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
        <title>EduSHEAT : Learn To Lead</title>

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


                        </li>
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
                    <h4 class="breadcrumb-title" >User Profile</h4>
                    <ul class="db-breadcrumb-list">
                        <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                        <li>User Profile</li>
                    </ul>
                </div>	
                <div class="row">
                    <!-- Your Profile Views Chart -->
                    <div class="col-lg-12 m-b30">
                        <div class="widget-box">
                            <div class="wc-title">
                                <h4>User Profile</h4>
                            </div>








                           







                            <%
                                
                                String query1 = "SELECT * FROM student_registration where regId= '"+session.getAttribute("admin_id") +"' ";
                                ResultSet rs1 = stmt.executeQuery(query1);

                                while (rs1.next()) {
                            %> 




 <div class="user-profile-thumb">
     <img src="../<%= rs1.getString("image_file") %>/<%= rs1.getString("image_name") %> " alt=""/>

                            </div>


                            <div class="widget-inner">
                                <form class="edit-profile m-b30">
                                    <div class="">
                                        <div class="form-group row">


                                            <div class="col-sm-10  ml-auto">
                                                <h3>1. Personal Details</h3>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Full Name</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("name")%>" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Registration ID</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("regId")%>" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Email ID</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("email")%>" readonly>
                                                  </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Mobile No.</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("mobile")%>" readonly>
                                            </div>
                                        </div>
 <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Date of Birth</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("dob")%>" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Year of Admission</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("academic_Year")%>" readonly>
                                            </div>
                                        </div>
                                        <div class="seperator"></div>

                                        <div class="form-group row">
                                            <div class="col-sm-10 ml-auto">
                                                <h3>2. Address</h3>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Address</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("address")%>" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">District</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("district")%>" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">State</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("state")%>" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Pincode</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("pincode")%>" readonly>
                                            </div>
                                        </div>

                                        <div class="m-form__seperator m-form__seperator--dashed m-form__seperator--space-2x"></div>

                                        <div class="form-group row">
                                            <div class="col-sm-10 ml-auto">
                                                <h3 class="m-form__section">3. Family Details</h3>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Father Name</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("father")%>" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Mother Name</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%= rs1.getString("mother")%>" readonly>
                                            </div>
                                        </div>
                                       
                                    </div>







                                    <%
                                        }

                                    %>





                                </form>
                               <form class="edit-profile">
                                                                <div class="">
                                                                    <div class="form-group row">
                                                                        <div class="col-sm-10 ml-auto">
                                                                            <h3>5. Password</h3>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-sm-2 col-form-label">Current Password</label>
                                                                        <div class="col-sm-7">
                                                                            <input class="form-control" id="currentPassword" type="password" id="currentPassword" onblur=" oldpsValid();">
                                                                            <span id="erroroldpassword" name="erroroldpassword" style="color: red"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-sm-2 col-form-label">New Password</label>
                                                                        <div class="col-sm-7">
                                                                            <input class="form-control" id="newPassword" type="password" id="newPassword" onblur="newpsValid()">
                                                                            <span id="errornewpassword" name="errornewpassword" style="color: red"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-sm-2 col-form-label">Re Type Password</label>
                                                                        <div class="col-sm-7">
                                                                            <input class="form-control" id="rePassword" type="password" id="rePassword" onblur="newpsValid()">
                                                                            <span id="errorconfirmpassword" name="errorconfirmpassword" style="color: red"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-sm-2">
                                                                    </div>
                                                                    <div class="col-sm-7">
                                                                        <input type="button" class="btn" value="Change Password" onclick="changePassword()"/>
                                                                        <button type="reset" class="btn-secondry" style="border: none">Reset</button>
                                                                    </div>
                                                                </div>
                                                                <span id="errorbtn" name="errorbtn" style="color: red"></span>
                                                            </form>
                            </div>
                        </div>
                    </div>
                    <!-- Your Profile Views Chart END-->
                </div>
            </div>
        </main>

                                    
                                    
                                    
                                    <script>
                                        
                                        
                                         function changePassword()
    {
        var oldps = $("#currentPassword").val().trim();

        var newps = $("#newPassword").val().trim();
        var confirmps = $("#rePassword").val().trim();


        if (oldps.length == 0 && newps.length == 0 && confirmps.length == 0)
        {
            oldpsValid();
            newpsValid();
            confirmpsValid();

        } else if (oldps.length == 0 || newps.length == 0 || confirmps.length == 0)
        {
            document.getElementById("errorbtn").innerHTML = "Please fill all field";
        } else
        {
            if (newps == confirmps)
            {
                $.ajax({
                    url: "ChangePasswordData.jsp",
                    type: 'POST',
                    data: {oldps: oldps, newps: newps, confirmps: confirmps},
                    success: function (msg) {
                        $("#errorbtn").empty();
                        $("#errorbtn").append(msg);

                        location.href = "../index.jsp";
                    }
                });
            } else
            {
                document.getElementById("errorbtn").innerHTML = "Confirm Password Not Match !!!";
            }



        }
    }
                                        
                                        
                                        
                                        
                                    </script>


























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
    </body>


</html>