package model;

public class Course {
    private int id;
    private String title;
    private String description;
    private String instructor;
    private String category;
    private String contentURL; // for video link or file path

    // Constructors
    public Course() {}

    public Course(int id, String title, String description, String instructor, String category, String contentURL) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.instructor = instructor;
        this.category = category;
        this.contentURL = contentURL;
    }

    public Course(String title, String description, String instructor, String category, String contentURL) {
        this.title = title;
        this.description = description;
        this.instructor = instructor;
        this.category = category;
        this.contentURL = contentURL;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getContentURL() {
        return contentURL;
    }

    public void setContentURL(String contentURL) {
        this.contentURL = contentURL;
    }
}
