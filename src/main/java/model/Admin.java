package model;

public class Admin {
    private String adminName;
    private String email;
    private String password;
    private String registrationDate;

    // Default constructor
    public Admin() {}

    // Parameterized constructor
    public Admin(String adminName, String email, String password, String registrationDate) {
        this.adminName = adminName;
        this.email = email;
        this.password = password;
        this.registrationDate = registrationDate;
    }

    // Getters and Setters
    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
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
}