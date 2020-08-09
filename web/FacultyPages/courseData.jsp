<%-- 
    Document   : courseData
    Created on : Jun 22, 2020, 5:54:11 AM
    Author     : deepa
--%>

<%@page import="java.util.Random"%>
<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Db.DBConnection"%>

<%

    String name = request.getParameter("name");
    String code = request.getParameter("code");
    String faculty = request.getParameter("faculty");
    String branch = request.getParameter("branch");
    String sem = request.getParameter("sem");

    String query1 = "insert into course (code, name, faculty, branch, sem) values('" + code + "','" + name + "','" + faculty + "','" + branch + "','" + sem + "')";
    int i = new DBConnection().getQuery(query1);

    if (i > 0) {
%>
<font style="color: green">Course Added Successfully</font>
<%
} else {
%>
<font style="color: red"> Course Addition  Failed!</font>
<%
    }


%>


