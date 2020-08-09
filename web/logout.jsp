<%
    try {
        String home = "index.jsp";

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Logout</title>");
        out.println("<meta http-equiv=\"refresh\" content=\"1;url=" + home + "\">");
        out.println("</head>");
        out.println("<body onunload=\"javascript:history.forward(1)\"><center>");
        out.println("<img src=\"assets/images/bye.gif\" width=\"950\" height=\"400\">");
        HttpSession session1 = request.getSession();        
        session1.invalidate();        
%>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() {
        window.history.forward();
    }
</SCRIPT>

<%
        out.println(
                "<h3>Thanks for Visit, You have logged out successfully<br></h3>");
        out.println("<p>Redirecting to main page....</p>");
        out.println("</center></body>");
        out.println("</html>");
    } finally {
        out.close();
    }

%>