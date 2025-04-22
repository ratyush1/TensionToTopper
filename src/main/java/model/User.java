package model;

public class User {
    private String fullName;
    private String email;
    private String password;
    private String registrationDate;
    private String rememberMe;
    private String role;

    // Default constructor
    public User() {}

    // Parameterized constructors
    public User(String fullName, String email, String password, String registrationDate) {
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.registrationDate = registrationDate;
    }

    public User(String fullName, String email, String password, String registrationDate, 
               String rememberMe, String role) {
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.registrationDate = registrationDate;
        this.rememberMe = rememberMe;
        this.role = role;
    }

    // Getters and Setters
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(String registrationDate) {
        this.registrationDate = registrationDate;
    }

    public String getRememberMe() {
        return rememberMe;
    }

    public void setRememberMe(String rememberMe) {
        this.rememberMe = rememberMe;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}