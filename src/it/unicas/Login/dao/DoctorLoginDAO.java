package it.unicas.Login.dao;

import it.unicas.Login.pojo.DoctorLogin;
import it.unicas.Login.dbutil.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DoctorLoginDAO {

    // Existing authenticate method
    public DoctorLogin authenticate(String username, String password) {
        Connection conn = DBUtil.getConnection();
        String sql = "SELECT username FROM doctor WHERE username = ? AND password = ?";

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                DoctorLogin doctor = new DoctorLogin();
                doctor.setUsername(rs.getString("username"));
                return doctor;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }

        return null; // Authentication failed
    }

    // New method to get the full name of the doctor
    public String getDoctorFullName(String username) {
        String fullName = null;
        Connection conn = DBUtil.getConnection();
        String sql = "SELECT CONCAT(firstname, ' ', lastname) AS full_name FROM doctor WHERE username = ?";

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                fullName = rs.getString("full_name");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }

        return fullName;
    }
}
