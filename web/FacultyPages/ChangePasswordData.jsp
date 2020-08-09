
<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Db.DBConnection"%>
<%
   String id= session.getAttribute("admin_id").toString();
    String oldps=request.getParameter("oldps");
    String newps=request.getParameter("newps");
  
    String pass="";
     ResultSet rs = new GetQuery().getResultSetQuery("select password from staff_registration where regId='" + id + "'");
    if (rs.next()) {
        pass = rs.getString(1);
    }
    if(oldps.equals(pass))
    {
         String query = "update staff_registration set password='" + newps + "' where regId='" + id + "'";
    int i = new DBConnection().getQuery(query);
   
%>
<font style="color: green">Successfully Updated</font>
<script>alert("Password Update Successfully");</script>
<%
 } else {
%>
<font style="color: red"> Updation Failed!</font>
<script>alert("Password  Updation Failed");</script>
<%
    }
%>
   
    


