package it.unicas.doctor.dao;

import it.unicas.doctor.pojo.Doctor;
import it.unicas.patient.dbutil.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DoctorRegDAO {

    public boolean usernameExists(String username) {
        Connection conn = DBUtil.getConnection();
        String sql = "SELECT COUNT(*) FROM doctor WHERE username = ?";
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

    public void saveDoctor(Doctor doctor) {
        Connection conn = DBUtil.getConnection();
        String sql = "INSERT INTO doctor (username, firstname, lastname, qualifications, gender, phonenumber, yearsofexperience, specialization, email, password, confirmpassword) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, doctor.getUsername());
            stmt.setString(2, doctor.getFirstName());
            stmt.setString(3, doctor.getLastName());
            stmt.setString(4, doctor.getQualifications());
            stmt.setString(5, doctor.getGender());
            stmt.setInt(6, doctor.getPhoneNumber());
            stmt.setInt(7, doctor.getYearsOfExperience());
            stmt.setString(8, doctor.getSpecialization());
            stmt.setString(9, doctor.getEmail());
            stmt.setString(10, doctor.getPassword());
            stmt.setString(11, doctor.getConfirmPassword());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
    }
}
