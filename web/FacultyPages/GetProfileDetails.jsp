
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%


    Connection conn = new DBConnection().getConnection();
    Statement stmt = conn.createStatement();
    String query = "SELECT * FROM admin_staff_login where regId='"+session.getAttribute("admin_id")+"'";
    ResultSet rs = stmt.executeQuery(query);
    String finalString = "";
    while (rs.next()) {

        finalString = rs.getString("name") + ","
                + rs.getString("father") + ","
                + rs.getString("mother") + ","
                + rs.getString("dob") + ","
                + rs.getString("nation") + ","
                + rs.getString("image_name") + ","
                + rs.getString("image_file") + ","
                + rs.getString("education") + ","
                + rs.getString("university") + ","
                + rs.getString("course") + ","
                + rs.getString("branch") + ","
                + rs.getString("enrollment_no") + ","
                + rs.getString("college_address") + ","
                + rs.getString("college_district") + ","
                + rs.getString("college_state") + ","
                + rs.getString("address") + ","
                + rs.getString("district") + ","
                + rs.getString("state") + ","
                + rs.getString("pincode") + ","
                + rs.getString("email") + ","
                + rs.getString("mobile") + ","
                + rs.getString("date");
    }

%>
<%=finalString%>
