`<%-- 
    Document   : RegisterStaffData
    Created on : Jun 2, 2020, 8:41:59 AM
    Author     : deepa
--%>


<%@page import="java.util.Random"%>
<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Db.DBConnection"%>
 
<%
   
    String title = request.getParameter("noticeTitle");
    String content = request.getParameter("noticeContent");
    
    
    
    
   
   String query1 = "update adminNotice set title='"+ title +"', content='"+ content +"' where sNo=1";
   int i= new DBConnection().getQuery(query1);
     
    if (i > 0) {
%>
<font style="color: green">Notice Updated Successfully</font>

<%

} else {
%>
<font style="color: red"> Unable to Update</font>
<%
    }
  
   
%>


