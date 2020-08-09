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

    String query = "select * from admin_staff_login";
    ResultSet rs = new GetQuery().getResultSetQuery(query);
    while (rs.next()) {
        String email = rs.getString("regid");
        String password = rs.getString("password");
        String status = rs.getString("status");

        if (email.equals(admin_id) && password.equals(Pass)) {
            st = true;
            if (status.equals("0")) {
                session.setAttribute("admin_id", admin_id);
%>

<script language='javascript'>location.href = "AdminPages/profileDetails.jsp"</script>
<%
} else if (status.equals("1")) {
    session.setAttribute("admin_id", admin_id);
%>

<script language='javascript'>location.href = "AdminPages/index.jsp"</script>
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