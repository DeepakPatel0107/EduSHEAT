
<%@page import="Db.GetCurrentDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Db.DBConnection"%>
<%@page import="Db.GetQuery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
String mailId=request.getParameter("mailId");
 String date=GetCurrentDate.getCurrentDatefull();
Connection conn = new DBConnection().getConnection();
    Statement stmt = conn.createStatement();
    String query = "SELECT * FROM mail where mailId='"+mailId+"'";
    ResultSet rs = stmt.executeQuery(query);
    String mailFrom="";
    String subject="";
    String message="";
    String doc_name="";
    String doc_file="";
    String doc_path="";
    String mailto="";
    
    while (rs.next()) {

        mailFrom=  rs.getString("mailfrom");
               subject= rs.getString("subject");
               message= rs.getString("message");
                doc_name = rs.getString("doc_name");
                mailto = rs.getString("mailto");
                doc_file= rs.getString("doc_file");
                doc_path= rs.getString("doc_path");
    }
    
    String query1="insert into trashMail (mailId,mailfrom,mailto, subject, message, doc_name, doc_file, doc_path, date) values ('"+mailId+"','"+mailFrom+"','"+mailto+"','"+subject+"', '"+message+"', '"+doc_name+"', '"+doc_file+"', '"+doc_path+"', '"+date+"')";
     new DBConnection().getQuery(query1);
boolean st=new GetQuery().getinsertUpdateQuery("delete from mail where mailId='"+mailId+"'");
if(st==true)
{
    %>
    <script>alert("Successfully deleted!");</script> <a href="mails.jsp"></a>
    <%
}
else
{
%>
    <script>alert("Error in deletion!");</script>
    <%
}



%>