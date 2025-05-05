package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Course;
import util.DBConnection;

public class CourseDAO {
    private Connection connection;

    public CourseDAO(Connection connection) {
        this.connection = connection;
    }


    public boolean addCourse(Course course) throws SQLException {
        String sql = "INSERT INTO course (title, description, price, difficultyLevel, rating, category, image) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, course.getTitle());
            statement.setString(2, course.getDescription());
            statement.setDouble(3, course.getPrice());
            statement.setString(4, course.getDifficultyLevel());
            statement.setDouble(5, course.getRating());
            statement.setString(6, course.getCategory());
            statement.setString(7, course.getImage());
            return statement.executeUpdate() > 0;
        }
    }

    public List<Course> getAllCourses() throws SQLException {
        List<Course> courses = new ArrayList<>();
        String sql = "SELECT * FROM course";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Course course = new Course();
                course.setCourseID(resultSet.getInt("courseID"));
                course.setTitle(resultSet.getString("title"));
                course.setDescription(resultSet.getString("description"));
                course.setPrice(resultSet.getDouble("price"));
                course.setDifficultyLevel(resultSet.getString("difficultyLevel"));
                course.setRating(resultSet.getDouble("rating"));
                course.setCategory(resultSet.getString("category"));
                course.setImage(resultSet.getString("image"));
                courses.add(course);
            }
        }
        return courses;
    }
}
