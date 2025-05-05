package model;

public class Course {
    private int courseID;
    private String title;
    private String description;
    private double price;
    private String difficultyLevel;
    private double rating;
    private String category;
    private String image;

    public Course() {
    }

    public Course(int courseID, String title, String description, double price, 
                 String difficultyLevel, double rating, String category, String image) {
        this.courseID = courseID;
        this.title = title;
        this.description = description;
        this.price = price;
        this.difficultyLevel = difficultyLevel;
        this.rating = rating;
        this.category = category;
        this.image = image;
    }

    // Getters and Setters
    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDifficultyLevel() {
        return difficultyLevel;
    }

    public void setDifficultyLevel(String difficultyLevel) {
        this.difficultyLevel = difficultyLevel;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Course{" +
                "courseID=" + courseID +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", difficultyLevel='" + difficultyLevel + '\'' +
                ", rating=" + rating +
                ", category='" + category + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}