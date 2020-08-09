<%-- 
    Document   : validateLogin
    Created on : Jun 1, 2020, 9:28:36 AM
    Author     : deepa
--%>


<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String admin_id = request.getParameter("userid");
    String Pass = request.getParameter("password");
    boolean st = false;

    String query = "select * from student_registration";
    ResultSet rs = new GetQuery().getResultSetQuery(query);
    while (rs.next()) {
        String email = rs.getString("regid");
        String password = rs.getString("password");
        String year = rs.getString("year");
        String branch = rs.getString("branch").substring(1, 3);
        String status = rs.getString("status");

        if (email.equals(admin_id) && password.equals(Pass)) {
            st = true;
            if (status.equals("0")) {
                session.setAttribute("admin_id", admin_id);
                session.setAttribute("branch", branch);
                session.setAttribute("year", year);
%>

<script language='javascript'>location.href = "studentsPage/profileDetails.jsp"</script>
<%
} else if (status.equals("1")) {
    session.setAttribute("admin_id", admin_id);
    session.setAttribute("branch", branch);
%>

<script language='javascript'>location.href = "studentsPage/index.jsp"</script>
<%
            }

        } else {
            st = false;
        }
    }
    if (st == true) {


%>
<font style="color:green">Login Successful....!</font>
<%} else {
%>
<font style="color: red">Please Enter correct username and password!</font>
<%
    }

%>