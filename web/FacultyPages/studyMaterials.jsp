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
              <span class="menu-title">Academic Timeline</span>
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
          <div class="page-header">
            <h3 class="page-title">
         Study Material Upload
            </h3>
          </div>
          
            
           <div class="row grid-margin">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                 
                      <div id="accordion-1" class="accordion">
                        <div class="card">
                          <div class="card-header" id="headingOne">
                            <h5 class="mb-0">
                              <a data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Lecture Notes Upload
                              </a>
                            </h5>
                          </div>
                          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion-1">
                            <div class="card-body">
                              
                                 <form class="pt-3" action="../UploadNotes" method="POST" enctype="multipart/form-data" >
                                       <div class="form-group">
                                           <select class="form-control form-control-lg" id="branch" name="branch">
                    <option>Branch</option>
                                                    <option>CSE</option>
                                                    <option>ECE</option>
                                                    <option>EEE</option>
                                                    <option>ME</option>
                                                    <option>CE</option>
                  </select>
                </div>                   
                <div class="form-group">
                    <select class="form-control form-control-lg" id="semester" name="semester">
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
                <div class="form-group">
                    <input type="text" class="form-control form-control-lg" id="title" name="title" placeholder="Title of the Notes" required>
                </div>
                <div class="form-group">
                    <input type="file" class="form-control form-control-lg" id="image" name="image" required>
                  <span style="color: blue">*Select an image related to Lecture Notes Uploading.</span>
                </div>
                   <div class="form-group">
                       <input type="file" class="form-control form-control-lg" id="file" name="file" required>
                  <span style="color: blue">*Upload the file here.</span>
                </div>
                
               
               
                  <div class="mt-3">
                      <button type="submit" style="border: none; background-color: white"><a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" style="color: white">Upload Lecture Notes</a></button> 
                </div>
              </form> 
                                
                            </div>
                          </div>
                        </div>
                        <div class="card">
                          <div class="card-header" id="headingTwo">
                            <h5 class="mb-0">
                              <a data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                               Tutorial Video Upload
                              </a>
                            </h5>
                          </div>
                          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion-1">
                            <div class="card-body">
                             
                                 <form class="pt-3">
                                       <div class="form-group">
                  <select class="form-control form-control-lg" id="branch1">
                    <option>Branch</option>
                                                    <option>Computer Science & Engineering</option>
                                                    <option>Electronics & Communication Engineering</option>
                                                    <option>Electrical & Electronics Engineering</option>
                                                    <option>Civil Engineering</option>
                                                    <option>Mechanical Engineering</option>
                  </select>
                                            <span id="branch1_error" style="color: red"></span>
                </div>                   
                <div class="form-group">
                  <select class="form-control form-control-lg" id="semester1">
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
                     <span id="semester1_error" style="color: red"></span>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control form-control-lg" id="title1" placeholder="Title of the Video" required>
                     <span id="title1_error" style="color: red"></span>
                </div>
              
                   <div class="form-group">
                       <input type="text" class="form-control form-control-lg" id="link1" placeholder="Paste Link Here" required>
                  <span style="color: blue">*Copy the Embedded Links only from YouTube .</span>
                  <br>
                   <span id="link1_error" style="color: red"></span>
                </div>
                
               
               
                  <div class="mt-3">
                      <button type="button" style="border: none; background-color: white" onclick="tutorialVideoData()"><a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" style="color: white">Upload Tutorial Video</a></button> 
                </div>
                                      <span id="error1" style="color: red"></span>
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
    
    <script>
        
        function tutorialVideoData()
        {
            var branch = $("#branch1").val().trim();
                var semester = $("#semester1").val().trim();
                var title = $("#title1").val().trim();
                var link = $("#link1").val().trim();
              

                if (title.length == 0 && link.length == 0 && branch == "Branch" && semester == "Semester")
                {
                    document.getElementById("branch1_error").innerHTML = "Please Select Branch!";
                    document.getElementById("semester1_error").innerHTML = "Please Select Semester!";
                    document.getElementById("title1_error").innerHTML = "Please Enter Title!";
                    document.getElementById("link1_error").innerHTML = "Please Paste Embedded YouTube Link!";
                  
                } else if (title.length == 0 || link.length == 0 || branch == "Branch" || semester == "Semester")
                {
                    document.getElementById("error1").innerHTML = "Please Fill All the Details!";
                } else
                {
                    document.getElementById("branch1_error").innerHTML = "";
                    document.getElementById("semester1_error").innerHTML = "";
                    document.getElementById("title1_error").innerHTML = "";
                    document.getElementById("link1_error").innerHTML = "";
                    document.getElementById("error1").innerHTML = "";
                    
                    $.ajax({
                        type: 'POST',
                        url: "tutorialVideoData.jsp",
                        data: {title: title, branch: branch, semester: semester, link: link},
                        success: function (msg) {
                            $("#error1").empty();
                            $("#error1").append(msg);
                            location.reload();
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
