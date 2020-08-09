<%-- 
    Document   : tutorialVideoData
    Created on : Jun 22, 2020, 5:12:21 AM
    Author     : deepa
--%>

<%@page import="java.util.Random"%>
<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Db.DBConnection"%>

<%

    String branch = request.getParameter("branch");
    String semester = request.getParameter("semester");
    String title = request.getParameter("title");
    String link = request.getParameter("link");
   String date= Db.GetCurrentDate.getCurrentDate();
    String query1 = "insert into tutorialVideo (branch, semester, title, link) values('" + branch + "','" + semester + "','" + title + "','" + link + "','" + date + "')";
    int i = new DBConnection().getQuery(query1);

    if (i > 0) {
%>
<font style="color: green">Uploaded Successfully</font>

<%

} else {
%>
<font style="color: red"> Upload Failed!</font>
<%
    }


%>


