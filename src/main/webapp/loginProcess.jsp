<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String role = request.getParameter("role");

    // Dummy data validation (replace with database query)
    if ("admin".equals(role)) {
        // Validate admin credentials (e.g., check against database)
        // For now, just a dummy check
        if ("admin@example.com".equals(email) && "adminpassword".equals(password)) {
            // Redirect to admin dashboard
            response.sendRedirect("admin-dashboard.jsp");
        } else {
            // Invalid admin credentials
            out.println("<p style='color:red;'>Invalid admin credentials</p>");
            response.sendRedirect("login.jsp?error=admin");
        }
    } else {
        // Validate user credentials (e.g., check against database)
        // For now, just a dummy check
        if ("user@example.com".equals(email) && "userpassword".equals(password)) {
            // Redirect to user dashboard
            response.sendRedirect("dashboard.jsp");
        } else {
            // Invalid user credentials
            out.println("<p style='color:red;'>Invalid user credentials</p>");
            response.sendRedirect("login.jsp?error=user");
        }
    }
%>
