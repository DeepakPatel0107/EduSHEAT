
<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Db.DBConnection"%>
<%
   String id= session.getAttribute("admin_id").toString();
    String oldps=request.getParameter("oldps");
    String newps=request.getParameter("newps");
  
    String pass="";
     ResultSet rs = new GetQuery().getResultSetQuery("select password from student_registration where regId='" + id + "'");
    if (rs.next()) {
        pass = rs.getString(1);
    }
    if(oldps.equals(pass))
    {
         String query = "update student_registration set password='" + newps + "' where regId='" + id + "'";
    int i = new DBConnection().getQuery(query);
   
%>
<font style="color: green">Successfully Updated</font>
<%
 } else {
%>
<font style="color: red"> Updatation Failed!</font>
<%
    }
%>
   
    


