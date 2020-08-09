<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
                    var rollNo = $("#rollno").val();
                    var name = $("#name").val();
                    var email = $("#email").val();
                    var mobile = $("#mobile").val();
                    var academic = $("#academicYear").val();
                    var year = $("#year").val();
                    var branch = $("#branch").val();
                    var markup = "<tr><td><input type='checkbox' name='record'></td><td>" + rollNo + "</td><td>" + name + "</td><td>" + email + "</td><td>" + mobile + "</td><td>" + academic + "</td><td>" + year + "</td><td>" + branch + "</td></tr>";
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
        <link rel="stylesheet" href="admin_assets/css/bootstrap.min.css">
        <!-- Icomoon Font Icons css -->
        <link rel="stylesheet" href="admin_assets/fonts/style.css">
        <!-- Main css -->
        <link rel="stylesheet" href="admin_assets/css/main.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- endinject -->
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
    </head>
    <body onload="call()">
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
                                Registered Students Details
                            </h3>
                        </div>



                        <div class="row grid-margin">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Student Details</h4>

                                        <form id="studentRegister">


                                            <br>
                                            <div class="row">

                                                <div class="col-sm-4">
                                                    <select type="text" id="year" style="min-height:40px;min-width:200px;" style="min-height:40px;min-width:200px;">
                                                        <option>Year</option>
                                                        <option>First</option>
                                                        <option>Second</option>
                                                        <option>Third</option>
                                                        <option>Fourth</option>


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
                                            </div>


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
                                            Registered Students
                                        </a>
                                    </h5>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion-1">
                                    <div class="card-body">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th>Select</th>
                                                    <th>Roll Number</th>
                                                    <th>Name</th>
                                                    <th>Email ID</th>
                                                    <th>Mobile Number</th>
                                                    <th>Academic Year</th>
                                                    <th>Year</th>
                                                    <th>Branch</th>
                                                    <th>Action</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%    
                                                     Connection conn = new DBConnection().getConnection();
                                                                                    Statement stmt = conn.createStatement();int i = 0;
                                                    String query1 = "SELECT * FROM student_registration where year='" + request.getParameter("year") + "' and branch='" + request.getParameter("branch") + "'";
                                                    ResultSet rs1 = stmt.executeQuery(query1);

                                                    while (rs1.next()) {

                                                %>
                                                <tr>
                                                    <td><%= i = i + 1%></td>
                                                    <td><%= rs1.getString("rollno")%></td>
                                                    <td><%= rs1.getString("name")%></td>
                                                    <td><%= rs1.getString("email")%></td>
                                                    <td><%= rs1.getString("mobile")%></td>
                                                    <td><%= rs1.getString("academic_year")%></td>
                                                    <td><%= rs1.getString("year")%></td>
                                                    <td><%= rs1.getString("branch")%></td>
                                                    <td><button data-toggle="modal" data-target="#Edit" style="border-radius:6px; background-color: lightblue;" onclick="EditCall('<%=rs1.getString("regId")%>')">View</button> </td>
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



        <form>
            <div class="modal fade " id="Edit" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="myLargeModalLabel">Student Details</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <%                            
                            String regId = "";
                            String rollno = "";
                            String name = "";
                            String branch = "";
                            String father = "";
                            String mother = "";
                            String dob = "";
                            String image_name = "";
                            String image_file = "";
                            String school_name = "";
                            String school_board = "";
                            String course = "";
                            String percentage = "";
                            String roll_No = "";
                            String college_address = "";
                            String college_district = "";
                            String college_state = "";
                            String address = "";
                            String district = "";
                            String state = "";
                            String email = "";
                            String pincode = "";
                            String mobile = "";
                            String date = "";

                            String query11 = "SELECT * FROM student_registration where regId='" + request.getParameter("id") + "'";
                            ResultSet rs11 = stmt.executeQuery(query11);

                            while (rs11.next()) {
                                regId = rs11.getString("regId");
                               rollno = rs11.getString("rollNo");
                               name= rs11.getString("name");
                               branch= rs11.getString("branch");
                               father= rs11.getString("father");
                               mother= rs11.getString("mother");
                               dob= rs11.getString("dob");
                               image_name= rs11.getString("image_name");
                               image_file= rs11.getString("image_file");
                               school_name= rs11.getString("school_name");
                               school_board= rs11.getString("school_board");
                               course= rs11.getString("course");
                               percentage= rs11.getString("percentage");
                               roll_No= rs11.getString("roll_no");
                               college_address= rs11.getString("college_address");
                              college_district = rs11.getString("college_district");
                              college_state= rs11.getString("college_state");
                              address= rs11.getString("address");
                              district= rs11.getString("district");
                              state= rs11.getString("state");
                              email= rs11.getString("email");
                              pincode= rs11.getString("pincode");
                              mobile= rs11.getString("mobile");
                              date= rs11.getString("date").substring(0,10);

                            }

                        %>



                        <div class="modal-body">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <div class="row gutters">

                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" >
                                                <center>                                                
                                                    <img id="image2" alt="image" src="../<%= image_file %>/<%=image_name %>" height="200" width="200" style="text-align: center">
                                                </center>                                              
                                                <br>


                                            </div>

                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">
                                                <div class="form-group">
                                                    <label for="inputName">Registration ID</label>
                                                    <input type="text" name="regId" class="form-control" id="regId" value="<%= regId%>">
                                                </div>
                                            </div>



                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">


                                                <div class="form-group">
                                                    <label for="exampleFormControlTextarea1">Roll Number</label>
                                                    <input type="text" name="rollNo" class="form-control" id="rollNo" value="<%=rollno  %>">
                                                </div>



                                            </div>
                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">
                                                <div class="form-group">
                                                    <label for="inputName">Name</label>
                                                    <input type="text" name="name" class="form-control" id="name" value="<%=name  %>">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">
                                                <div class="form-group">
                                                    <label for="inputEmail">Branch</label>
                                                    <input type="text" name="branch" class="form-control" id="branch" value="<%=branch  %>">
                                                </div>
                                            </div>

                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">
                                                <label for="inputName">Father's Name</label>
                                                <div class="form-group">
                                                    <input type="text" name="father" class="form-control" id="father" value="<%=father  %>">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">


                                                <label for="inputName">Mother's Name</label>
                                                <div class="form-group">
                                                    <input type="text" name="mother" class="form-control" id="mother" value="<%=mother  %>">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">
                                                <div class="form-group">
                                                    <label >Date of Birth</label>
                                                    <input type="text" name="dob" class="form-control" id="dob" value="<%=dob  %>">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">
                                                <div class="form-group">
                                                    <label >Mobile Number</label>
                                                    <input type="text" name="mobile" class="form-control" id="mobile" value="<%=mobile  %>">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">
                                                <div class="form-group">
                                                    <label >Email Id</label>
                                                    <input type="text" name="email" class="form-control" id="email" value="<%=email  %>" >
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">
                                                <div class="form-group">
                                                    <label >First Login Date</label>
                                                    <input type="text" name="login" class="form-control" id="login" value="<%=date  %>">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">


                                                <div class="form-group">
                                                    <label for="exampleFormControlTextarea1">School Details</label>
                                                    <textarea class="form-control" name="school" id="school" rows="10" style="font-weight:bold"> School Name: <%=school_name  %> &#10;&#10; School Board: <%=school_board  %>&#10;&#10; Course: <%=course  %>&#10;&#10; Roll Number: <%=roll_No  %> &#10;&#10; Percentage: <%=percentage  %>&#10;&#10; School Address: <%=college_address  %>&#10;&#10; School District: <%=college_district  %>&#10;&#10; School State: <%=college_state  %> </textarea>
                                                </div>

                                            </div>
                                            <div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-6">


                                                <div class="form-group">
                                                    <label for="exampleFormControlTextarea1">Address Details</label>
                                                     <textarea class="form-control" name="school" id="school" rows="10" style="font-weight:bold"> Address: <%=address  %> &#10;&#10; District: <%=district  %>&#10;&#10; State: <%=state  %>&#10;&#10; Pincode: <%=pincode  %> </textarea>
                                                </div>

                                            </div>



                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" style="color: red" data-dismiss="modal">Close</button>

                        </div>
                        <span id="msg"></span>
                    </div>
                </div>

            </div>

        </form>






        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block" ><b>** EduSHEAT: Learn To Lead :: Deepak Patel :: 1638410011 :: B.Tech :: 4th Year :: Final Year Project **</b> </span>
                <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"><b> thePatel</b> <i class="far fa-heart text-danger"></i></span>
            </div>
        </footer>


        <script>

            function EditCall(id)
            {
                const queryString = window.location.search;
                const urlParams = new URLSearchParams(queryString);
                const branch = urlParams.get('branch')
                const year = urlParams.get('year')

                location.href = "registerStudents.jsp?year=" + year + "&branch=" + branch + "&id=" + id;
                //  window.history.replaceState(null, null, "?year=" + year + "&branch=" + branch+ "&id="+id);
                call()

            }


            function call()
            {
                const queryString = window.location.search;
                const urlParams = new URLSearchParams(queryString);
                const val = urlParams.get('id')

                if (val.length > 6)
                {
                    $('#Edit').modal('show');
                }



            }
            function fetchDetails()
            {
                var year = $("#year").val().trim();
                var branch = $("#branch").val().trim();
                location.href = "registerStudents.jsp?year=" + year + "&branch=" + branch;
                value()

            }

            function value()
            {

                document.getElementById("year").value = "ssa";
                document.getElementById("branch").value = "dfgfdg";
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

        <script src="admin_assets/js/jquery.min.js"></script>
        <script src="admin_assets/js/bootstrap.bundle.min.js"></script>
        <script src="admin_assets/admin_assets/js/moment.js"></script>


        <!-- *************
                ************ Vendor Js Files *************
        ************* -->
        <!-- Slimscroll JS -->
        <script src="admin_assets/vendor/slimscroll/slimscroll.min.js"></script>
        <script src="admin_assets/vendor/slimscroll/custom-scrollbar.js"></script>

        <!-- Data Tables -->
        <script src="admin_assets/vendor/datatables/dataTables.min.js"></script>
        <script src="admin_assets/vendor/datatables/dataTables.bootstrap.min.js"></script>

        <!-- Custom Data tables -->
        <script src="admin_assets/vendor/datatables/custom/custom-datatables.js"></script>
        <script src="admin_assets/vendor/datatables/custom/fixedHeader.js"></script>

        <!-- Download / CSV / Copy / Print -->
        <script src="admin_assets/vendor/datatables/buttons.min.js"></script>
        <script src="admin_assets/vendor/datatables/jszip.min.js"></script>
        <script src="admin_assets/cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script src="admin_assets/vendor/datatables/vfs_fonts.js"></script>
        <script src="admin_assets/vendor/datatables/html5.min.js"></script>
        <script src="admin_assets/vendor/datatables/buttons.print.min.js"></script>

        <!-- Main JS -->
        <script src="admin_assets/js/main.js"></script>
    </body>


</html>
