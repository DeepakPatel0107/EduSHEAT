
<%@page import="Db.GetCurrentDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Db.DBConnection"%>
<%@page import="Db.GetQuery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String code = request.getParameter("code");

%>

<%    boolean st = new GetQuery().getinsertUpdateQuery("delete from course where code='" + code + "'");
    if (st == true) {
%>
<script>alert("Successfully deleted!");</script>
<%
} else {
%>
<script>alert("Error in deletion!");</script>
<%
    }


%>