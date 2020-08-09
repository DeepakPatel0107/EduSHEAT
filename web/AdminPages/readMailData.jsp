
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mailId = request.getParameter("mailId");

    Connection conn = new DBConnection().getConnection();
    Statement stmt = conn.createStatement();
    String query = "SELECT * FROM mail where mailId='" + mailId + "'";
    ResultSet rs = stmt.executeQuery(query);
    String finalString = "";
    while (rs.next()) {

        finalString = rs.getString("mailfrom") + ","
                + rs.getString("subject") + ","
                + rs.getString("message") + ","
                + rs.getString("doc_name") + ","
                + rs.getString("doc_file");
    }

%>
<%=finalString%>
