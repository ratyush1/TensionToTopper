package controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.User;
import dao.UserDAO;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class login extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // Preserve form inputs in case of error
        request.setAttribute("preservedEmail", email);
        request.setAttribute("preservedRole", request.getParameter("role"));
        request.setAttribute("preservedRemember", request.getParameter("remember"));
        
        try {
            UserDAO userDAO = new UserDAO();
            User user = userDAO.validateUser(email, password);
            
            if (user != null) {
                // Create session
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                session.setAttribute("role", user.getRole());
                
                // Handle "Remember Me" functionality
                if (request.getParameter("remember") != null) {
                    Cookie emailCookie = new Cookie("rememberedEmail", email);
                    emailCookie.setMaxAge(30 * 24 * 60 * 60); // 30 days
                    response.addCookie(emailCookie);
                } else {
                    // Remove cookie if "Remember Me" is not checked
                    Cookie emailCookie = new Cookie("rememberedEmail", "");
                    emailCookie.setMaxAge(0);
                    response.addCookie(emailCookie);
                }
                
                // Redirect to role-filter which will handle the redirection
                response.sendRedirect("role-filter");
            } else {
                request.setAttribute("errorMessage", "Invalid email or password. Please try again.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            // Log the error for debugging
            e.printStackTrace();
            
            // User-friendly error message
            request.setAttribute("errorMessage", "A system error occurred. Please try again later.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            // Check if user is already logged in
            HttpSession session = request.getSession(false);
            if (session != null && session.getAttribute("user") != null) {
                // If logged in, redirect through role-filter
                response.sendRedirect("role-filter");
            } else {
                // If not logged in, show login page
                response.sendRedirect("login.jsp");
            }
        } catch (Exception e) {
            // Log the error for debugging
            e.printStackTrace();
            
            // Send to error page if redirect fails
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, 
                             "A system error occurred");
        }
    }
}