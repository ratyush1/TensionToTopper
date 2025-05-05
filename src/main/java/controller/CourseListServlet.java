package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import dao.CourseDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Course;

@WebServlet("/courseList")
public class CourseListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/tensiontotopper", "root", "");

            CourseDAO courseDAO = new CourseDAO(connection);
            List<Course> courseList = courseDAO.getAllCourses();
            connection.close();

            request.setAttribute("courseList", courseList);
            request.getRequestDispatcher("course-list.jsp").forward(request, response);
            
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("course-list.jsp?error=true");
        }
    }
}