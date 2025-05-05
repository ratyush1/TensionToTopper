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
        String role = request.getParameter("role");

        // Preserve form inputs in case of error
        request.setAttribute("preservedEmail", email);
        request.setAttribute("preservedRole", role);
        request.setAttribute("preservedRemember", request.getParameter("remember"));

        if (email.equals("pratyush33.16@gmail.com")){
        	if(	role.equals("admin")) {
            response.sendRedirect(request.getContextPath() + "/admin-dashboard.jsp");
        } 
        }
        else {
        	
              	if(	role.equals("user")) {
                  response.sendRedirect(request.getContextPath() + "/dashboard.jsp");
              

        try {
            UserDAO userDAO = new UserDAO();
            User user = userDAO.validateUser(email, password);

            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                session.setAttribute("role", user.getRole());

                // "Remember Me" functionality
                if (request.getParameter("remember") != null) {
                    Cookie emailCookie = new Cookie("rememberedEmail", email);
                    emailCookie.setMaxAge(30 * 24 * 60 * 60); // 30 days
                    response.addCookie(emailCookie);
                } else {
                    Cookie emailCookie = new Cookie("rememberedEmail", "");
                    emailCookie.setMaxAge(0);
                    response.addCookie(emailCookie);
                }

                // Redirect logic
              
            } else {
                request.setAttribute("errorMessage", "Invalid email or password. Please try again.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "A system error occurred. Please try again later.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }}
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession(false);
            if (session != null && session.getAttribute("user") != null) {
                response.sendRedirect("role-filter");
            } else {
                response.sendRedirect("login.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, 
                             "A system error occurred");
        }
    }
}
