<%-- 
    Document   : removeStudent
    Created on : Jun 22, 2020, 4:14:22 AM
    Author     : deepa
--%>

<%@page import="Db.GetCurrentDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Db.DBConnection"%>
<%@page import="Db.GetQuery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
String regID=request.getParameter("regID");

%>

<script>alert(<%= regID  %>);</script>
<%
 
boolean st=new GetQuery().getinsertUpdateQuery("delete from student_registration where regID='"+regID+"'");
if(st==true)
{
    %>
    <script>alert("Successfully deleted!");</script> <a href="registerStaff.jsp"></a>
    <%
}
else
{
%>
    <script>alert("Error in deletion!");</script>
    <%
}



%>
