package it.unicas.Login.dao;

import it.unicas.Login.pojo.PatientLogin;
import it.unicas.Login.dbutil.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PatientLoginDAO {

    public PatientLogin authenticate(String username, String password) {
        Connection conn = DBUtil.getConnection();
        String sql = "SELECT username FROM patient WHERE username = ? AND password = ?";

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                PatientLogin patient = new PatientLogin();
                patient.setUsername(rs.getString("username"));
                return patient;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }

        return null; // Authentication failed
    }
}
