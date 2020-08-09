<%-- 
    Document   : RegisterStudentData
    Created on : Jun 22, 2020, 2:56:41 AM
    Author     : deepa
--%>


<%@page import="java.util.Random"%>
<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Db.DBConnection"%>

<%
    String rollno = request.getParameter("rollno");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String year = request.getParameter("year");
    String branch = request.getParameter("branch");
    String Academicyear = request.getParameter("Academicyear");
    String branchSubstr = branch.substring(0, 3);
    String nameSubstr = name.substring(0, 6).toUpperCase().trim();
    String mobileSubstr = mobile.substring(7, 10);
    String yearSubstr = Academicyear.substring(2, 4);
    String regID = nameSubstr + "/SHEAT/" + branchSubstr + "/" + yearSubstr + "/" + mobileSubstr;

    String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
    String specialCharacters = "!@#$";
    String numbers = "1234567890";
    String combinedChars = capitalCaseLetters + lowerCaseLetters + specialCharacters + numbers;
    Random random = new Random();
    char[] password = new char[6];

    password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
    password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
    password[2] = specialCharacters.charAt(random.nextInt(specialCharacters.length()));
    password[3] = numbers.charAt(random.nextInt(numbers.length()));

    for (int i = 4; i < 6; i++) {
        password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
    }

    long id = Math.round(Math.random() * 100000);

    String query1 = "insert into student_registration (regId,password,rollno,name,email,mobile,year, branch,academic_Year,status,id) values('" + regID + "','" + password + "','" + rollno + "','" + name + "','" + email + "','" + mobile + "','" + year + "','" + branch + "','" + Academicyear + "','0','" + id + "')";
    int i = new DBConnection().getQuery(query1);

    if (i > 0) {
%>
<font style="color: green">Registered Successfully</font>
<script>alert("<%=name%> Registered Successfully with Registration ID : <%= regID%> ");</script>
<%

} else {
%>
<font style="color: red"> Registration Failed!</font>
<%
    }


%>

