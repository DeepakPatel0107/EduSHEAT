
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%


    Connection conn = new DBConnection().getConnection();
    Statement stmt = conn.createStatement();
    String query = "SELECT notes.img_name, notes.img_file,notes.doc_name, notes.doc_file, notes.title, tutorialvideo.title, tutorialvideo.link from notes, tutorialvideo where notes.branch  = tutorialvideo.branch";
    ResultSet rs = stmt.executeQuery(query);
    String finalString = "";
    while (rs.next()) {

        finalString = rs.getString("img_name") + ","
                + rs.getString("img_file") + ","
                + rs.getString("title") + ","
                
                + rs.getString("doc_name") + ","
                + rs.getString("doc_file") + ","
                
                + rs.getString("tutorialvideo.title") + ","
                + rs.getString("link") ;
    }

%>
<%=finalString%>
