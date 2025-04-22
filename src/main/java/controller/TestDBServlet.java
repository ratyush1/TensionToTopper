package controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

@WebServlet("/testDB")
public class TestDBServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Database Connection Test</h1>");
        
        // Replace with your actual DB credentials
        String url = "jdbc:mysql://localhost:3306/tensiontotopper";
        String user = "root";
        String password = "";
        
        out.println("<p>Trying to connect to: " + url + "</p>");
        
        try {
            // 1. Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            out.println("<p>MySQL JDBC Driver Registered!</p>");
            
            // 2. Attempt connection
            Connection conn = DriverManager.getConnection(url, user, password);
            out.println("<p style='color:green'>Connection SUCCESSFUL!</p>");
            
            // 3. Test simple query
            try {
                boolean tablesExist = conn.getMetaData().getTables(null, null, "user", null).next();
                out.println("<p>Users table exists: " + tablesExist + "</p>");
                
                tablesExist = conn.getMetaData().getTables(null, null, "admin", null).next();
                out.println("<p>Admins table exists: " + tablesExist + "</p>");
            } catch (Exception e) {
                out.println("<p style='color:orange'>Tables check failed: " + e.getMessage() + "</p>");
            }
            
            conn.close();
        } catch (ClassNotFoundException e) {
            out.println("<p style='color:red'>MySQL JDBC Driver NOT found!</p>");
            e.printStackTrace(response.getWriter());
        } catch (Exception e) {
            out.println("<p style='color:red'>Connection FAILED!</p>");
            out.println("<p>Error: " + e.getMessage() + "</p>");
            e.printStackTrace(response.getWriter());
        }
    }
}