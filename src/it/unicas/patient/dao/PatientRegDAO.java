package it.unicas.patient.dao;

import it.unicas.patient.pojo.Patient;
import it.unicas.patient.dbutil.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PatientRegDAO {

    public boolean usernameExists(String username) {
        Connection conn = DBUtil.getConnection();
        String sql = "SELECT COUNT(*) FROM patient WHERE username = ?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
        return false;
    }

    public void savePatient(Patient patient) {
        Connection conn = DBUtil.getConnection();
        String sql = "INSERT INTO patient (username, age, gender, email, firstname, lastname, bloodgroup, password, confirmpassword) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, patient.getUsername());
            stmt.setInt(2, patient.getAge());
            stmt.setString(3, patient.getGender());
            stmt.setString(4, patient.getEmail());
            stmt.setString(5, patient.getFirstName());
            stmt.setString(6, patient.getLastName());
            stmt.setString(7, patient.getBloodGroup());
            stmt.setString(8, patient.getPassword());
            stmt.setString(9, patient.getConfirmPassword());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
    }
}
