<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<!DOCTYPE html>
<html lang="en">


    <head>
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
              <jsp:include page="sidebar.jsp"/>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="page-header">
                            <h3 class="page-title">
                                Study Material Upload
                            </h3>
                        </div>



                        <div class="row grid-margin">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Study Materials</h4>

                                        <form id="studentRegister">


                                            <br>
                                            <div class="row">

                                                <div class="col-sm-4">
                                                    
                                                    <select type="text" id="year" style="min-height:40px;min-width:200px;" style="min-height:40px;min-width:200px;">
                                                        <option>Semester</option>
                                                        <option>First</option>
                                                        <option>Second</option>
                                                        <option>Third</option>
                                                        <option>Fourth</option>
                                                        <option>Fifth</option>
                                                        <option>Sixth</option>
                                                        <option>Seventh</option>
                                                        <option>Eighth</option>


                                                    </select>
                                                </div>
                                                <div class="col-sm-4">
                                                    
                                                    <select type="text" id="branch" style="min-height:40px;min-width:200px;" style="min-height:40px;min-width:200px;">
                                                        <option>Branch</option>
                                                      <option>CSE</option>
                                                    <option>ECE</option>
                                                    <option>EEE</option>
                                                    <option>ME</option>
                                                    <option>CE</option>

                                                    </select>
                                                </div>
                                                <div class="col-sm-3">
                                                    <input type="button" class="add-row" value="Show Details" onclick="fetchDetails()" style="min-height:40px;min-width:200px;">
                                                </div>
                                                <br>
                                                <br>
                                                <br><br>
                                            </div>


                                        </form>
                                    </div>


                                </div>
                            </div>
                        </div>


                        <div class="row grid-margin">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Notes</h4>
                                        <div class="card-body">
                                             
                                            <div class="col-12">
                                                <div class="table-responsive">
                                                    <table id="order-listing" class="table" style="border-style:outset ">
                                                        <thead style="background-color: #6666ff;color: white;">
                                                            <tr>
                                                                <th>S. No.</th>
                                                                <th>Branch</th>
                                                                <th>Semester</th>
                                                                <th>Title</th>
                                                                <th>Upload Date</th>
                                                                <th>Image</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%                                                                int i = 0;
                                                             Connection conn = new DBConnection().getConnection();
                                                                                    Statement stmt = conn.createStatement();
                                                                String query1 = "SELECT * FROM notes where semester='" + request.getParameter("year") + "' and branch='" + request.getParameter("branch") + "'";
                                                                ResultSet rs1 = stmt.executeQuery(query1);

                                                                while (rs1.next()) {

                                                            %>
                                                            <tr>
                                                                <td><%= i = i + 1%></td>
                                                                <td><%= rs1.getString("branch")%></td>
                                                                <td><%= rs1.getString("semester")%></td>
                                                                <td><%= rs1.getString("title")%></td>
                                                                <td><%= rs1.getString("date").substring(0, 10)%></td>
                                                                <td><img  alt="image" src="../<%= rs1.getString("doc_file")%>/<%= rs1.getString("doc_name")%>" height="40" width="35"></td>
                                                                <td style="cursor: pointer"><a href="<%= "../" + rs1.getString("img_file") + "/" + rs1.getString("img_name")%>"><i class="fa fa-eye" > View </i></a></td>

                                                            </tr>
                                                            <%
                                                                }

                                                            %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                                                        

                        <div class="row grid-margin">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Tutorials</h4>
                                        <div class="card-body">                                    
                                            <div class="col-12">
                                                <div class="table-responsive">
                                                    <table id="order-listing" class="table" style="border-style:outset ">
                                                        <thead style="background-color: #6666ff;color: white;">
                                                            <tr>
                                                                <th>S. No.</th>
                                                                <th>Branch</th>
                                                                <th>Semester</th>
                                                                <th>Title</th>
                                                                <th>Upload Date</th>

                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%                                                                int j = 0;
                                                                String query11 = "SELECT * FROM tutorialvideo where semester='" + request.getParameter("year") + "' and branch='" + request.getParameter("branch") + "'";
                                                                ResultSet rs11 = stmt.executeQuery(query11);

                                                                while (rs11.next()) {

                                                            %>
                                                            <tr>
                                                                <td><%= j = j + 1%></td>
                                                                <td><%= rs11.getString("branch")%></td>
                                                                <td><%= rs11.getString("semester")%></td>
                                                                <td><%= rs11.getString("title")%></td>
                                                                <td><%= rs11.getString("date").substring(0, 10)%></td>

                                                                <td style="cursor: pointer"><a href="<%=  rs11.getString("link")%>"><i class="fa fa-eye" > View </i></a></td>

                                                            </tr>
                                                            <%
                                                                }

                                                            %>
                                                        </tbody>
                                                    </table>
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




            function fetchDetails()
            {
                var year = $("#year").val().trim();
                var branch = $("#branch").val().trim();
                
                location.href = "studyMaterials.jsp?year=" + year + "&branch=" + branch;
                value()

            }


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
