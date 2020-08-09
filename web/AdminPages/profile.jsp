<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Db.DBConnection"%>
<%@page import="Db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
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
                                <img id="proImg" src="images/faces/face5.jpg" alt="profile"/>
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
                               Profile
                            </h3>
                        </div>



                    <%
                                String mailId = request.getParameter("mailId");
 Connection conn = new DBConnection().getConnection();
                                                                                    Statement stmt = conn.createStatement();
                                
                                String query1 = "SELECT * FROM admin_staff_login where regId= '"+session.getAttribute("admin_id") +"' ";
                                ResultSet rs1 = stmt.executeQuery(query1);

                                while (rs1.next()) {
                            %> 

                        <div class="row grid-margin">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <div class="tab-pane" id="edit-profile">
                                            <div class="profile-head">

                                            </div>
                                            <form class="edit-profile">
                                                <div class="">
                                                    <div class="form-group row">
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-10 ml-auto">
                                                            <h3>1. Personal Details</h3>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Full Name</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="name" value="<%= rs1.getString("name")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Father's Name</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="father" value="<%= rs1.getString("father")  %>" readonly >
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Mother's Name</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="mother" value="<%= rs1.getString("mother")  %>" readonly>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Date of Birth</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="dob" value="<%= rs1.getString("dob")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Nationality</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="nation" value="<%= rs1.getString("nation")  %>" readonly>
                                                        </div>
                                                    </div>

                                                    <div class="seperator"></div>

                                                    <div class="form-group row">
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-10 ml-auto">
                                                            <h3>2. Address</h3>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Address</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="address" value="<%= rs1.getString("address")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">District</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="district" value="<%= rs1.getString("district")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">State</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="state" value="<%= rs1.getString("state")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Pincode</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="pincode" value="<%= rs1.getString("pincode")  %>" readonly>
                                                        </div>
                                                    </div>



                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Mobile Number</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="mobile" value="<%= rs1.getString("mobile")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Email Id</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="email" value="<%= rs1.getString("email")  %>" readonly>
                                                        </div>
                                                    </div>




                                                    <div class="m-form__seperator m-form__seperator--dashed m-form__seperator--space-2x"></div>

                                                    <div class="form-group row">
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-10 ml-auto">
                                                            <h3 class="m-form__section">3. Educational Details</h3>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Highest Education</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="highestEducation" value="<%= rs1.getString("education")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">University Name</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="university" value="<%= rs1.getString("university")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Course</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="course" value="<%= rs1.getString("course")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Branch</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="branch" value="<%= rs1.getString("branch")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Enrollment Number</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="enrollmentNo" value="<%= rs1.getString("enrollment_No")  %>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">Address</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="collegeAddress" value="<%= rs1.getString("college_address")  %> <%= rs1.getString("college_district")  %> <%= rs1.getString("college_state")  %>" readonly>
                                                        </div>
                                                    </div>




                                                    <div class="m-form__seperator m-form__seperator--dashed m-form__seperator--space-2x"></div>

                                                    <div class="form-group row">
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-10 ml-auto">
                                                            <h3 class="m-form__section">4. Account Details</h3>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-12 col-sm-3 col-md-3 col-lg-2 col-form-label">First Login On</label>
                                                        <div class="col-12 col-sm-9 col-md-9 col-lg-7">
                                                            <input class="form-control" type="text" id="date" value="<%= rs1.getString("date").substring(0,10)  %>" readonly>
                                                        </div>
                                                    </div>

                                                </div>

                                            </form>
                                        </div>
 <%
                                        }

                                    %>

                                        <div id="accordion-1" class="accordion">

                                            <div class="card">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0">
                                                        <a data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                            Change Password
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion-1">
                                                    <div class="card-body">
                                                        <div class="tab-pane" id="change-password">

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



<script>

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

                callSetValues(name, father, mother, dob, nation, image_name, image_file, education, university, course, branch, enrollmentNo, college_address, college_district, college_state, address, district, state, pincode, email, mobile, update);

            }

        });



        function callSetValues(name, father, mother, dob, nation, image_name, image_file, education, university, course, branch, enrollmentNo, college_address, college_district, college_state, address, district, state, pincode, email, mobile, update)
        {
            document.getElementById("name1").innerHTML = name;
            document.getElementById("name").value = name;
            document.getElementById("father").value = father;
            document.getElementById("mother").value = mother;
            document.getElementById("dob").value = dob;
            document.getElementById("nation").value = nation;
            document.getElementById("highestEducation").value = education;
            document.getElementById("university").value = university;
            document.getElementById("course").value = course;
            document.getElementById("branch").value = branch;
            document.getElementById("enrollmentNo").value = enrollmentNo;
            document.getElementById("collegeAddress").value = college_address + " " + college_district + " " + college_state;
            document.getElementById("address").value = address;
            document.getElementById("district").value = district;
            document.getElementById("state").value = state;
            document.getElementById("pincode").value = pincode;
            document.getElementById("email").value = email;
            document.getElementById("mobile").value = mobile;
            document.getElementById("date").value = update;
            document.getElementById("myImg").src = "../" + image_file + "/" + image_name;
            //document.getElementById("proImg").src = "../" + image_file + "/" + image_name;

        }


    }



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
    function oldpsValid()
    {
        var oldps = $("#currentPassword").val().trim();
        if (oldps.length == 0)
        {
            document.getElementById("erroroldpassword").innerHTML = "Please enter old password";
        } else
        {
            document.getElementById("erroroldpassword").innerHTML = "";
        }
    }


    function newpsValid()
    {
        var newps = $("#newPassword").val().trim();
        if (newps.length == 0)
        {
            document.getElementById("errornewpassword").innerHTML = "Please enter new password";
        } else
        {
            document.getElementById("errornewpassword").innerHTML = "";
        }
    }

    function confirmpsValid()
    {
        var confirmps = $("#rePassword").val().trim();
        if (confirmps.length == 0)
        {
            document.getElementById("errorconfirmpassword").innerHTML = "Please enter confirm pssword";
        } else
        {
            document.getElementById("errorconfirmpassword").innerHTML = "";
        }
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
