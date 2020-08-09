<%-- 
    Document   : sidebar
    Created on : 9 Aug, 2020, 2:17:04 PM
    Author     : thePatel
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Db.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
            <%
                String file = "", image = "", name = "";
                Connection conn = new DBConnection().getConnection();
                Statement stmt = conn.createStatement();
                String query13 = "SELECT * FROM admin_staff_login where regId= '" + session.getAttribute("admin_id") + "'";
                ResultSet rs13 = stmt.executeQuery(query13);

                while (rs13.next()) {
                    file = rs13.getString("image_file");
                    image = rs13.getString("image_name");
                    name = rs13.getString("name");
                }

            %>
            <li class="nav-item nav-profile">
                <div class="nav-link">
                    <div class="profile-image">

                        <img src="../<%=file%>/<%=image%>" alt="image" height="200" width="200" style="text-align: center"/>
                    </div>
                    <div class="profile-name">
                        <p class="name">
                            Welcome <%=name%>
                        </p>
                        <p class="designation">
                            <b> Admin</b>

                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="index.jsp">
                    <i class="fa fa-home menu-icon"></i>
                    <span class="menu-title">Dashboard</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="registerStaff.jsp">
                    <i class="fa fa-users menu-icon"></i>
                    <span class="menu-title">Register Faculty Staffs</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="registerStudents.jsp">
                    <i class="far fa-address-card menu-icon"></i>
                    <span class="menu-title">Student Records</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="studyMaterials.jsp">
                    <i class="fa fa-graduation-cap menu-icon"></i>
                    <span class="menu-title">Study Material Upload</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="timeTable.jsp">
                    <i class="fa fa-clock menu-icon"></i>
                    <span class="menu-title">Time Table</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="course.jsp">
                    <i class="fa fa-book-reader menu-icon"></i>
                    <span class="menu-title">Course Subjects</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="marks.jsp">
                    <i class="fa fa-edit menu-icon"></i>
                    <span class="menu-title">Project/Assignment Report</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="notices.jsp">
                    <i class="fa fa-bullhorn menu-icon"></i>
                    <span class="menu-title">Notice Board</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="mails.jsp">
                    <i class="fa fa-envelope menu-icon"></i>
                    <span class="menu-title">Mail</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="academicCalender.jsp">
                    <i class="fa fa-calendar menu-icon"></i>
                    <span class="menu-title">Academic Timeline</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="circulars.jsp">
                    <i class="fa fa-bell menu-icon"></i>
                    <span class="menu-title">Circulars</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="profile.jsp">
                    <i class="fa fa-user menu-icon"></i>
                    <span class="menu-title">My Profile</span>
                </a>
            </li>

        </ul>
    </nav>
</html>
