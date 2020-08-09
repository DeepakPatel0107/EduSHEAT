<%-- 
    Document   : logout
    Created on : 5 Aug, 2020, 4:09:35 AM
    Author     : thePatel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><body bgcolor="khaki">

        <%

           
           
session.invalidate();
response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Cache-Control","no-store"); 
response.setDateHeader("Expires", 0); 
response.sendRedirect("../index.jsp");
        %>

        <h1><font color="Red">You are Successfully logged out...</font></h1>

        <a href="home.jsp">Go-Back To Home Page</a>

    </body>
    <script type="text/javascript">
        function noBack()
         {
             window.history.forward()
         }
        noBack();
        window.onload = noBack;
        window.onpageshow = function(evt) { if (evt.persisted) noBack() }
        window.onunload = function() { void (0) }
    </script>

</html>