<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <style>
            form{
                margin: 20px 0;
            }
            form input, button{
                padding: 5px;
            }
            table{
                width: 100%;
                margin-bottom: 20px;
                border-collapse: collapse;
            }
            table, th, td{
                border: 1px solid #cdcdcd;
            }
            table th, table td{
                padding: 10px;
                text-align: left;
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
                            <h2 class="page-title">
                                Staff Registration     
                            </h2>
                        </div>



                        <div class="row grid-margin">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h5 class="fa fa-arrow-circle-down"> Register here </h5>
                                        <h6 class="font-weight-light">Registration is easy. It only takes a few steps</h6>
                                        <form class="pt-3">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-lg" id="name" placeholder="Name" style="min-height:40px;min-width:200px;">
                                           <span id="name_error" style="color: red"></span>
                                            </div>
                                           
                                            <div class="form-group">
                                                <input type="email" class="form-control form-control-lg" id="email" placeholder="Email" style="min-height:40px;min-width:200px;">
                                           <span id="email_error" style="color: red"></span>
                                            </div>
                                           
                                            <div class="form-group">
                                                <input type="number" class="form-control form-control-lg" id="mobile" placeholder="Mobile Number" style="min-height:40px;min-width:200px;">
                                           <span id="mobile_error" style="color: red"></span>
                                            </div>
                                            
                                            <div class="form-group">
                                                <input type="number" class="form-control form-control-lg" id="year" placeholder="Year of Joining" style="min-height:40px;min-width:200px;">
                                            <span id="year_error" style="color: red"></span>
                                            </div>
                                           
                                            <div class="form-group">
                                                <select class="form-control form-control-lg" id="post" style="min-height:40px;min-width:200px;">
                                                    <option>Post</option>
                                                    <option>HOD</option>

                                                </select>
                                            <span id="post_error" style="color: red"></span>
                                            </div>
                                           
                                            <div class="form-group">
                                                <select class="form-control form-control-lg" id="branch" style="min-height:40px;min-width:200px;">
                                                    <option>Branch</option>
                                                <option>CSE</option>
                                                    <option>ECE</option>
                                                    <option>EEE</option>
                                                    <option>ME</option>
                                                    <option>CE</option>
                                                </select>
                                           <span id="branch_error" style="color: red"></span>
                                            </div>
                                           

                                            <div class="mt-3">
                                                <button type="button" style="border: none; background-color: white" onclick="registerStaff()"><a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" style="min-height:40px;min-width:200px; color: white">Register</a></button> 
                                            </div>
                                            <span id="error" style="color: red"></span>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>




                        <div id="accordion-1" class="accordion">

                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <a data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            Registered Staffs
                                        </a>
                                    </h5>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion-1">
                                    <div class="card-body">
                                        <table>
                                            <thead>
                                                <tr>

                                                    <th>Staff ID</th>
                                                    <th>Name</th>
                                                    <th>Branch</th>
                                                    <th>Post</th>
                                                    <th>Year of Join</th>
                                                    <th>Email ID</th>
                                                    <th>Mobile Number</th>
                                                    <th>Remove Staff</th>
                                                </tr>
                                            </thead>
                                            <tbody>


                                                <%

                                                     Connection conn = new DBConnection().getConnection();
                                                                                    Statement stmt = conn.createStatement();
                                                    String query1 = "SELECT * FROM staff_registration";
                                                    ResultSet rs1 = stmt.executeQuery(query1);

                                                    while (rs1.next()) {

                                                %>
                                                <tr>       

                                                    <td><%= rs1.getString("regId")%> </td>
                                                    <td><%= rs1.getString("name")%></td>
                                                    <td><%= rs1.getString("branch").substring(0, 3)%></td>
                                                    <td><%= rs1.getString("post")%></td>
                                                    <td><%= rs1.getString("yearOJ")%></td>
                                                    <td><%= rs1.getString("email")%></td>
                                                    <td><%= rs1.getString("mobile")%></td>
                                                    <td><input type="button" class="delete-row" value="Remove" onclick="removeStaff('<%= rs1.getString("regId")%>')"></td>
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


        <script>

            function registerStaff()
            {

                var name = $("#name").val().trim();
                var email = $("#email").val().trim();
                var mobile = $("#mobile").val().trim();
                var year = $("#year").val().trim();
                var post = $("#post").val().trim();
                var branch = $("#branch").val().trim();

                if (name.length == 0 && email.length == 0 && mobile.length == 0 && year.length == 0 && post == "Post" && branch == "Branch")
                {
                    document.getElementById("name_error").innerHTML = "Please Enter Name!";
                    document.getElementById("email_error").innerHTML = "Please Enter Email!";
                    document.getElementById("mobile_error").innerHTML = "Please Enter Mobile Number!";
                    document.getElementById("year_error").innerHTML = "Please Enter Year of Joining!";
                    document.getElementById("post_error").innerHTML = "Please Select Staff Post!";
                    document.getElementById("branch_error").innerHTML = "Please Select Staff Branch!";
                } else if (name.length == 0 || email.length == 0 || mobile.length == 0 || year.length == 0 || post == "Post" || branch == "Branch")
                {
                    document.getElementById("error").innerHTML = "Please Fill All the Details!";
                } else
                {
                    document.getElementById("name_error").innerHTML = "";
                    document.getElementById("email_error").innerHTML = "";
                    document.getElementById("mobile_error").innerHTML = "";
                    document.getElementById("year_error").innerHTML = "";
                    document.getElementById("error").innerHTML = "";
                    document.getElementById("post_error").innerHTML = "";
                    document.getElementById("branch_error").innerHTML = "";

                    $.ajax({
                        type: 'POST',
                        url: "RegisterStaffData.jsp",
                        data: {name: name, email: email, mobile: mobile, year: year, post: post, branch: branch},
                        success: function (msg) {
                            $("#error").empty();
                            $("#error").append(msg);
                            location.reload();
                        }
                    });
                }
            }



            function removeStaff(regID)
            {
                alert("Hello");

                $.ajax({
                    type: 'POST',
                    url: "removeStaff.jsp",
                    data: {regID: regID},
                    success: function (msg) {
                        $("#error").empty();
                        $("#error").append(msg);
                        location.reload();
                    }
                });

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
