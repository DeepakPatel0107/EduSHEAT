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
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".add-row").click(function () {
                    var title = $("#title").val();
                    var content = $("#Noticecontent").val();

                    var markup = "<tr><td><input type='checkbox' name='record'></td><td>" + title + "</td><td>" + content + "</td></tr>";
                    $("table tbody").append(markup);

                    document.getElementById("studentRegister").reset();
                });

                // Find and remove selected table rows
                $(".delete-row").click(function () {
                    $("table tbody").find('input[name="record"]').each(function () {
                        if ($(this).is(":checked")) {
                            $(this).parents("tr").remove();
                        }
                    });
                });
            });
        </script>


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
                                Notice Board
                            </h3>
                        </div>



                        <div class="row grid-margin">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Notice Details</h4>

                                        <form id="studentRegister">
                                            <div class="row"> 
                                                <div class="col-sm-3">
                                                    <input type="text" id="title" placeholder="Notice Title" style="min-height:40px;min-width:500px;">
                                                </div>

                                            </div>
                                            <span id="title_error" style="color: red"></span>
                                            <br>
                                            <textarea id="noticeContent" placeholder="Notice Content" style="min-height:100px;min-width:500px;"></textarea>  


                                            <br>
                                                 <br>
                                                   
                                            <span id="Content_error" style="color: red"></span>
                                            <div class="row">
                                                <div class="col-sm-7">
                                                    <input type="button" id="publish" class="add-row" value="Publish Notice" style="min-height:40px;min-width:200px;" onclick="publishNotice()">
                                                </div>

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
                                            Current Published Notice
                                        </a>
                                    </h5>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion-1">
                                    <div class="card-body">
                                        <table>
                                            <thead>
                                                <tr>
                                                  
                                                    <th>Notice Title</th>
                                                    <th>Notice Content</th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <%
                                                      
                                                        Connection conn = new DBConnection().getConnection();
                                                                                    Statement stmt = conn.createStatement();
                                                        String query1 = "SELECT * FROM adminNotice where sNo=1";
                                                        ResultSet rs1 = stmt.executeQuery(query1);

                                                        while (rs1.next()) {
                                                    %>
                                                    
                                                    <td><%= rs1.getString("title") %> </td>
                                                    <td><%= rs1.getString("content") %></td>
                                                    <%
                                                        }

                                                    %>



                                                </tr>
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
            function publishNotice()
            {

                var noticeTitle = $("#title").val().trim();
                var noticeContent = $("#noticeContent").val().trim();

                if (noticeTitle.length === 0 && noticeContent.length === 0)
                {
                    document.getElementById("title_error").innerHTML = "Please Enter Notice Title!";
                    document.getElementById("Content_error").innerHTML = "Please Provide the Notice Content!";
                } else if (noticeTitle.length === 0 || noticeContent.length === 0)
                {
                    document.getElementById("error").innerHTML = "Please Fill All the Details!";
                } else
                {
                    document.getElementById("title_error").innerHTML = "";
                    document.getElementById("Content_error").innerHTML = "";


                    $.ajax({
                        type: 'POST',
                        url: "NoticeData.jsp",
                        data: {noticeTitle: noticeTitle, noticeContent: noticeContent},
                        success: function (msg) {
                            $("#error").empty();
                            $("#error").append(msg);

                        }
                    });

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
