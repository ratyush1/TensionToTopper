<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Course</title>
    <link rel="stylesheet" href="styles/add-course.css">
</head>
<body>
    <div class="container">
        <h1>Add New Course</h1>
       <form action="addCourse" method="POST" enctype="multipart/form-data">
    <label for="title">Title</label>
    <input type="text" name="title" required>

    <label for="description">Description</label>
    <textarea name="description" required></textarea>

    <label for="price">Price</label>
    <input type="number" name="price" required>

    <label for="difficultyLevel">Difficulty Level</label>
    <input type="text" name="difficultyLevel" required>

    <label for="rating">Rating</label>
    <input type="number" name="rating" required>

    <label for="category">Category</label>
    <input type="text" name="category" required>

    <label for="image">Image</label>
    <input type="file" name="image" required>

    <button type="submit">Add Course</button>
</form>
    </div>
</body>
</html>
