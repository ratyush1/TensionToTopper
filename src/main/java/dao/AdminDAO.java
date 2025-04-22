package dao;

import model.Admin;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDAO {
	public boolean insertAdmin(Admin admin) {
	    String query = "INSERT INTO admin (adminname, email, password, registration_date) VALUES (?, ?, ?, ?)";
	    try (Connection conn = DBConnection.getConnection();
	         PreparedStatement stmt = conn.prepareStatement(query)) {
	        stmt.setString(1, admin.getAdminName());
	        stmt.setString(2, admin.getEmail());
	        stmt.setString(3, admin.getPassword());
	        stmt.setString(4, admin.getRegistrationDate()); // Insert the registration date
	        return stmt.executeUpdate() > 0;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	}

    // Validate Admin Login
    public Admin validateAdmin(String email, String password) {
        Admin admin = null;
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM admin WHERE Email = ? AND Password = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                admin = new Admin();
                admin.setAdminName(rs.getString("AdminName"));
                admin.setEmail(rs.getString("Email"));
                admin.setPassword(rs.getString("Password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }

    // Login method for Admin
    public Admin login(String email, String password) {
        Admin admin = null;
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM admin WHERE Email = ? AND Password = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                admin = new Admin();
                admin.setAdminName(rs.getString("AdminName"));
                admin.setEmail(rs.getString("Email"));
                admin.setPassword(rs.getString("Password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }

    // Register method for Admin
    public boolean register(Admin admin) {
        return insertAdmin(admin);
    }
}
