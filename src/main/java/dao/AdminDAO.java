package dao;

import model.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import dbutil.DBConnection;

public class AdminDAO {

    // Method to validate admin credentials
    public Admin validateAdmin(String username, String password) {
    	    Admin admin = null;
    	    String query = "SELECT * FROM admin WHERE username = ? AND password = ?";
    	    
    	    try (Connection conn = DBConnection.getConnection();
    	         PreparedStatement pstmt = conn.prepareStatement(query)) {
    	         
    	        // Trimming input to avoid accidental spaces
    	        pstmt.setString(1, username.trim());
    	        pstmt.setString(2, password.trim());
    	        
    	        try (ResultSet rs = pstmt.executeQuery()) {
    	            if (rs.next()) {
    	                admin = new Admin();
    	                admin.setUsername(rs.getString("username"));
    	                admin.setPassword(rs.getString("password"));
    	                System.out.println("Admin login successful!");
    	            } else {
    	                System.out.println("Admin login failed: Incorrect username or password.");
    	            }
    	        }
    	    } catch (SQLException e) {
    	        e.printStackTrace();
    	    }
    	    return admin;
    	}

    }

