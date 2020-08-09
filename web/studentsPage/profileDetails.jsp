<%-- 
    Document   : profileDetails
    Created on : May 20, 2020, 2:23:20 PM
    Author     : deepa
--%>

<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" type="text/css" href="assets/css/assets.css">

       

        <!-- STYLESHEETS ============================================= -->
       
       
        <style>
            * {
                box-sizing: border-box;
            }

            body {
                background-color: #f1f1f1;
            }

            #regForm {
                background-color: #cccccc;
                opacity: 0.7;
                margin: 100px auto;
                font-family: Raleway;
                padding: 40px;
                width: 70%;
                min-width: 300px;
              
                left:170px;
            }

            h1 {
                text-align: center;  
            }

            input {
                padding: 10px;
                width: 100%;
                font-size: 17px;
                font-family: Raleway;
                border: 1px solid #aaaaaa;
            }

            /* Mark input boxes that gets an error on validation: */
            input.invalid {
                background-color: #ffdddd;
            }

            /* Hide all steps by default: */
            .tab {
                display: none;
            }

            button {
                background-color: #4CAF50;
                color: #ffffff;
                border: none;
                padding: 10px 20px;
                font-size: 17px;
                font-family: Raleway;
                cursor: pointer;
            }

            button:hover {
                opacity: 0.8;
            }

            #prevBtn {
                background-color: #bbbbbb;
            }

            /* Make circles that indicate the steps of the form: */
            .step {
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbbbbb;
                border: none;  
                border-radius: 50%;
                display: inline-block;
                opacity: 0.5;
            }

            .step.active {
                opacity: 1;
            }

            /* Mark the steps that are finished and valid: */
            .step.finish {
                background-color: #4CAF50;
            }

            .formBack {
                background-image: url("https://img4.goodfon.com/wallpaper/nbig/5/53/abstract-colors-colorful-rainbow-background-fon-tsvet-raduga.jpg");
                height: 100%;
                background-repeat: no-repeat;
                margin: 0px;
background-position: center;
  background-repeat: no-repeat;
  background-size: cover;


            }
        </style>


    </head>

    <body class="formBack">
        <div >

            <form id="regForm" action="../studentProfileDetails" method="POST" enctype="multipart/form-data">
                
                <!-- One "tab" for each step in the form: -->
                <div class="tab">
                    <h1>General Details </h1>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-7">
                            <input  type="text" placeholder="Your Name..."  name="name">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Father Name</label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="Your Farher Name..."  name="fname">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Mother Name</label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="Your Mother Name..."  name="mname">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Date of Birth</label>
                        <div class="col-sm-7">
                            <input type="date"  name="dob">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Nationality</label>
                        <div class="col-sm-7">
                            <select id="nationality" class="form-control" name="nationality" type="text">
                               
                                <option>Indian</option>
                                <option>Other</option>

                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Profile Picture</label>
                        <div class="col-sm-7">
                            <input type="file" id="img" name="img" accept="image/*">
                        </div>
                    </div>
                    

                </div>
               
                
                
                
                
                
                
                <div class="tab">
                    <h1>Academic Details </h1>
                   <div class="form-group row">
                        <label class="col-sm-2 col-form-label">School Name</label>
                        <div class="col-sm-7">
                            <input  type="text" placeholder="Your Last School Name..."  name="collage">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">School Board</label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="Your School Board..."  name="university">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Course</label>
                        <div class="col-sm-7">
                            <input  type="text" placeholder="Your Course..."  name="course">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Percentage</label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="Your Percentage..."  name="percentage">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Roll Number</label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="Your Enrollment/Roll Number..."  name="rollNumber">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="College Address..." name="collegeAddress">
                        </div> 
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">District</label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="College District..." name="collegeDistirct">
                        </div> 
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">College State</label>
                        <div class="col-sm-7">
                            <select id="collegeState" class="form-control" name="collegeState" type="text">
                                <option>Andhra Pradesh</option>
                                <option>Arunachal Pradesh</option>
                                <option>Assam</option>
                                <option>Bihar</option>
                                <option>Chhattisgarh</option>
                                <option>Goa</option>
                                <option>Gujarat</option>
                                <option>Haryana</option>
                                <option>Himachal Pradesh</option>
                                <option>Jharkhand</option>
                                <option>Karnataka</option>
                                <option>Kerala</option>
                                <option>Madhya Pradesh</option>
                                <option>Maharashtra</option>
                                <option>Manipur</option>
                                <option>Meghalaya</option>
                                <option>Mizoram</option>
                                <option>Nagaland</option>
                                <option>Odisha</option>
                                <option>Punjab</option>
                                <option>Rajasthan</option>
                                <option>Sikkim</option>
                                <option>Tamil Nadu</option>
                                <option>Telangana</option>
                                <option>Tripura</option>
                                <option>Uttar Pradesh</option>
                                <option>Uttarakhand</option>
                                <option>West Bengal</option>
                                <option>Delhi</option>
                                <option>Jammu and Kashmir</option>
                                <option>Ladakh</option>
                                 <option>Other</option>
                            </select>
                        </div>
                    </div>
                </div>
                
                
                
                
                
                
                
                
                  <div class="tab">
                    <h1>Contact Details </h1>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-7">
                            <input  type="text" placeholder="Your Address..."  name="yourAddress">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">District</label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="Your District..."  name="yourDistrict">
                        </div>
                    </div>
                     <div class="form-group row">
                        <label class="col-sm-2 col-form-label">State</label>
                        <div class="col-sm-7">
                            <select id="yourState" class="form-control" name="yourState" type="text">
                                <option>Andhra Pradesh</option>
                                <option>Arunachal Pradesh</option>
                                <option>Assam</option>
                                <option>Bihar</option>
                                <option>Chhattisgarh</option>
                                <option>Goa</option>
                                <option>Gujarat</option>
                                <option>Haryana</option>
                                <option>Himachal Pradesh</option>
                                <option>Jharkhand</option>
                                <option>Karnataka</option>
                                <option>Kerala</option>
                                <option>Madhya Pradesh</option>
                                <option>Maharashtra</option>
                                <option>Manipur</option>
                                <option>Meghalaya</option>
                                <option>Mizoram</option>
                                <option>Nagaland</option>
                                <option>Odisha</option>
                                <option>Punjab</option>
                                <option>Rajasthan</option>
                                <option>Sikkim</option>
                                <option>Tamil Nadu</option>
                                <option>Telangana</option>
                                <option>Tripura</option>
                                <option>Uttar Pradesh</option>
                                <option>Uttarakhand</option>
                                <option>West Bengal</option>
                                <option>Delhi</option>
                                <option>Jammu and Kashmir</option>
                                <option>Ladakh</option>
                                <option>Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Pincode</label>
                        <div class="col-sm-7">
                            <input type="number" placeholder="Your Pincode..." name="yourPincode">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">EmailID</label>
                        <div class="col-sm-7">
                            <input  type="email" placeholder="Your EmailID..."  name="yourEmail">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Mobile Number</label>
                        <div class="col-sm-7">
                            <input type="bumber" placeholder="Your Mobile Number..."  name="yourMobile">
                        </div>
                    </div>

                </div>
              
               <div class="tab">
                    <h1>Course Interested </h1>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Course 1</label>
                        <div class="col-sm-7">
                            <input  type="text" placeholder="First Course Name..."  name="course1">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Course 2</label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="Second Course Name..."  name="course2">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Course 3</label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="Third Course Name..."  name="course3">
                        </div>
                    </div>
                   
                </div>
                
                
                
                
                
                
                
                
                <div style="overflow:auto;">
                    <div style="float:right;">
                        <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                        <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
                    </div>
                </div>
                <!-- Circles which indicates the steps of the form: -->
                <div style="text-align:center;margin-top:40px;">
                    <span class="step"></span>
                    <span class="step"></span>
                    <span class="step"></span>
                    <span class="step"></span>
                </div>
            </form>
        </div>
            <script>
                var currentTab = 0; // Current tab is set to be the first tab (0)
                showTab(currentTab); // Display the current tab

                function showTab(n) {
                    // This function will display the specified tab of the form...
                    var x = document.getElementsByClassName("tab");
                    x[n].style.display = "block";
                    //... and fix the Previous/Next buttons:
                    if (n == 0) {
                        document.getElementById("prevBtn").style.display = "none";
                    } else {
                        document.getElementById("prevBtn").style.display = "inline";
                    }
                    if (n == (x.length - 1)) {
                        document.getElementById("nextBtn").innerHTML = "Submit";
                    } else {
                        document.getElementById("nextBtn").innerHTML = "Next";
                    }
                    //... and run a function that will display the correct step indicator:
                    fixStepIndicator(n)
                }

                function nextPrev(n) {
                    // This function will figure out which tab to display
                    var x = document.getElementsByClassName("tab");
                    // Exit the function if any field in the current tab is invalid:
                    if (n == 1 && !validateForm())
                        return false;
                    // Hide the current tab:
                    x[currentTab].style.display = "none";
                    // Increase or decrease the current tab by 1:
                    currentTab = currentTab + n;
                    // if you have reached the end of the form...
                    if (currentTab >= x.length) {
                        // ... the form gets submitted:
                        document.getElementById("regForm").submit();
                        return false;
                    }
                    // Otherwise, display the correct tab:
                    showTab(currentTab);
                }

                function validateForm() {
                    // This function deals with validation of the form fields
                    var x, y, i, valid = true;
                    x = document.getElementsByClassName("tab");
                    y = x[currentTab].getElementsByTagName("input");
                    // A loop that checks every input field in the current tab:
                    for (i = 0; i < y.length; i++) {
                        // If a field is empty...
                        if (y[i].value == "") {
                            // add an "invalid" class to the field:
                            y[i].className += " invalid";
                            // and set the current valid status to false
                            valid = false;
                        }
                    }
                    // If the valid status is true, mark the step as finished and valid:
                    if (valid) {
                        document.getElementsByClassName("step")[currentTab].className += " finish";
                    }
                    return valid; // return the valid status
                }

                function fixStepIndicator(n) {
                    // This function removes the "active" class of all steps...
                    var i, x = document.getElementsByClassName("step");
                    for (i = 0; i < x.length; i++) {
                        x[i].className = x[i].className.replace(" active", "");
                    }
                    //... and adds the "active" class on the current step:
                    x[n].className += " active";
                }
            </script>


    </body>
</html>

