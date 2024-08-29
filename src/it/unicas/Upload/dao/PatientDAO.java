package it.unicas.Upload.dao;

import it.unicas.Upload.dbutil.DBUtil;
import it.unicas.Upload.pojo.Patient;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PatientDAO {

    public Patient getPatientDetails(String patientUsername) throws SQLException {
        Patient patient = null;
        String query = "SELECT username, firstname, lastname, age, gender, bloodgroup FROM patient WHERE username = ?";

        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, patientUsername);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                patient = new Patient();
                patient.setUsername(resultSet.getString("username"));
                patient.setFirstname(resultSet.getString("firstname"));
                patient.setLastname(resultSet.getString("lastname"));
                patient.setAge(resultSet.getInt("age"));
                patient.setGender(resultSet.getString("gender"));
                patient.setBloodgroup(resultSet.getString("bloodgroup"));
            }
        } catch (SQLException e) {
            throw new SQLException("Error retrieving patient details: " + e.getMessage(), e);
        }

        return patient;
    }
}
