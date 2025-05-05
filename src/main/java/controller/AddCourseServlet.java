package controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import dao.CourseDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Course;
import util.DBConnection;

@WebServlet("/addCourse")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
                 maxFileSize = 1024 * 1024 * 10,       // 10MB
                 maxRequestSize = 1024 * 1024 * 50)    // 50MB
public class AddCourseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        String difficultyLevel = request.getParameter("difficultyLevel");
        double rating = Double.parseDouble(request.getParameter("rating"));
        String category = request.getParameter("category");

        // Handle image upload
        Part imagePart = request.getPart("image");
        String imageName = Paths.get(imagePart.getSubmittedFileName()).getFileName().toString();


        // Define upload path
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        // Save the image
        imagePart.write(uploadPath + File.separator + imageName);

        // Create Course object
        Course course = new Course();
        course.setTitle(title);
        course.setDescription(description);
        course.setPrice(price);
        course.setDifficultyLevel(difficultyLevel);
        course.setRating(rating);
        course.setCategory(category);
        course.setImage(imageName);

       


        	Connection connection = null;
        	try {
        	    connection = DBConnection.getConnection();
        	    CourseDAO courseDAO = new CourseDAO(connection);
        	    boolean isAdded = courseDAO.addCourse(course);

        	    if (isAdded) {
        	        response.sendRedirect("course-list.jsp?success=true");
        	    } else {
        	        response.sendRedirect("addcourse.jsp?error=true");
        	    }
        	} catch (SQLException e) {
        	    e.printStackTrace();
        	    response.sendRedirect("addcourse.jsp?error=true");
        	} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
        	    try {
        	        if (connection != null) connection.close();
        	    } catch (SQLException e) {
        	        e.printStackTrace();
        	    }
        	}
}}