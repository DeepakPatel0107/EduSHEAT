<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from educhamp.themetrades.com/demo/admin/courses.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:10:19 GMT -->
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
    <body class="ttr-opened-sidebar ttr-pinned-sidebar" onload="details()">

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
                    <h4 class="breadcrumb-title">Courses</h4>
                    <ul class="db-breadcrumb-list">
                        <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                        <li>Courses</li>
                    </ul>
                </div>	
                <!-- Your Profile Views Chart -->
                <div class="section-area section-sp1 gallery-bx">
                    <div class="container">
                        <div class="feature-filters clearfix center m-b40">
                            <ul class="filters" data-toggle="buttons">
                                <li data-filter="" class="btn active">
                                    <input type="radio">
                                    <a href="#"><span>All</span></a> 
                                </li>
                                <li data-filter="book" class="btn">
                                    <input type="radio">
                                    <a href="#"><span>Notes</span></a> 
                                </li>
                                <li data-filter="courses" class="btn">
                                    <input type="radio">
                                    <a href="#"><span>Tutorials</span></a> 
                                </li>
                                <!--							<li data-filter="education" class="btn">
                                                                                                <input type="radio">
                                                                                                <a href="#"><span>Education</span></a> 
                                                                                        </li>-->
                            </ul>
                        </div>
                        <div class="clearfix">
                            <ul id="masonry" class="ttr-gallery-listing magnific-image row">






                                <%
                                   
                                    String query1 = "SELECT notes.img_name, notes.img_file,notes.doc_name, notes.doc_file, notes.title, tutorialvideo.title, tutorialvideo.link from notes, tutorialvideo where notes.branch  = tutorialvideo.branch and  tutorialvideo.branch= '"+session.getAttribute("branch") +"' and  notes.branch= '"+session.getAttribute("branch") +"'";
                                    ResultSet rs1 = stmt.executeQuery(query1);

                                    while (rs1.next()) {
                                %>




                                <li class="action-card col-lg-12 col-md-12 col-sm-12 book">
                                    <div class="ttr-box portfolio-bx">
                                        <div class="ttr-media media-ov2 media-effect">
                                            <a href="javascript:void(0);">
                                                <iframe  width="950" height="475" src="<%= "../" + rs1.getString("doc_file") + "/" + rs1.getString("doc_name")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                            </a>
                                            <div class="ov-box">
                                                <div class="overlay-icon align-m"> 
                                                   
                                                    <a  href="<%= "../" + rs1.getString("img_file") + "/" + rs1.getString("img_name")%>" class="magnific-anchor" title="<%= rs1.getString("notes.title")%>">
                                                        <i class="ti-search"></i> 
                                                    </a>
                                                </div>
                                                <div class="portfolio-info-bx bg-primary">
                                                    <input type="text" value="<%= rs1.getString("notes.title")%> " disabled >

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>



                                <%
                                    }

                                %>



<%
                                  
                                    String query = "SELECT title,link from tutorialvideo where branch= '"+session.getAttribute("branch") +"'";
                                    ResultSet rs = stmt.executeQuery(query);

                                    while (rs.next()) {
                                %>


                                <li class="action-card col-lg-12 col-md-12 col-sm-12 courses">
                                    <div class="ttr-box portfolio-bx">
                                        <div class="ttr-media media-ov2 media-effect">
                                            <a href="javascript:void(0);">

                                                <iframe  width="950" height="475" src="<%=  rs.getString("link") %> " frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                            </a>
                                            <div class="ov-box">
                                                <div class="overlay-icon align-m"> 
                                                    <a href="<%=  rs.getString("link") %>" class="magnific-anchor" title="<%=  rs.getString("title") %>">
                                                        <i class="ti-search"></i>
                                                    </a>
                                                </div>
                                                <div class="portfolio-info-bx bg-primary">
                                                    <input type="text" value="<%=  rs.getString("title") %>" disabled >

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                
                                
                                <%
                                    }

                                %>
                                
                                
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Your Profile Views Chart END-->

            </div>
        </main>
        <div class="ttr-overlay"></div>



        <script>


            function details()
            {

                $.ajax({
                    url: "CourseDetailsData.jsp",
                    type: 'POST',
                    data: {},
                    success: function (msg) {

                        var image_name = msg.split(",")[0].trim();
                        var image_file = msg.split(",")[1].trim();
                        var notestitle = msg.split(",")[2].trim();
                        var doc_name = msg.split(",")[3].trim();
                        var doc_file = msg.split(",")[4].trim();
                        var tutorTitle = msg.split(",")[5].trim();
                        var link = msg.split(",")[6].trim();


                        callSetValues(notestitle, image_name, image_file, doc_name, doc_file, tutorTitle, link);

                    }

                });

                function callSetValues(notestitle, image_name, image_file, doc_name, doc_file, tutorTitle, link)
                {

                    document.getElementById("notesTitle").value = notestitle;

                    document.getElementById("imageFile").src = "../" + doc_file + "/" + doc_name;
                    document.getElementById("docFile").href = "../" + doc_file + "/" + doc_name;
                    document.getElementById("name").value = tutorTitle;
                    document.getElementById("link").href = link;
                    document.getElementById("link1").src = link;

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
        <script src='assets/vendors/scroll/scrollbar.min.js'></script>
        <script src="assets/js/functions.js"></script>
        <script src="assets/vendors/chart/chart.min.js"></script>
        <script src="assets/js/admin.js"></script>
        <script src='assets/vendors/switcher/switcher.js'></script>
    </body>


</html>