package it.unicas.Upload.dao;

import it.unicas.Upload.pojo.Upload;
import it.unicas.Upload.dbutil.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import java.sql.ResultSet;

public class UploadDAO {

    public void saveUploadDetails(Upload upload) throws SQLException {
        String sql = "INSERT INTO upload (doctor_username, patient_username, file_path) VALUES (?, ?, ?)";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, upload.getDoctorUsername());
            stmt.setString(2, upload.getPatientUsername());
            stmt.setString(3, upload.getFilePath());

            stmt.executeUpdate();
        }
    }

    // Method to retrieve files for a specific doctor
    public List<Upload> getFilesForDoctor(String doctorUsername) throws SQLException {
        List<Upload> files = new ArrayList<>();
        //String query = "SELECT doctor_username, patient_username, file_path FROM upload WHERE doctor_username = ?";
        String query = "SELECT u.doctor_username, u.patient_username, CONCAT(p.firstname, ' ', p.lastname) AS patient_fullname, u.file_path " +
                "FROM upload u " +
                "JOIN patient p ON u.patient_username = p.username " +
                "WHERE u.doctor_username = ?";
        System.out.println("Executing query to fetch files for doctor: " + doctorUsername);

        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, doctorUsername);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Upload upload = new Upload();
                upload.setDoctorUsername(resultSet.getString("doctor_username"));
                upload.setPatientUsername(resultSet.getString("patient_username"));
                upload.setPatientFullName(resultSet.getString("patient_fullname"));
                upload.setFilePath(resultSet.getString("file_path"));
                files.add(upload);
            }
            // Check if files were retrieved
            if (files.isEmpty()) {
                System.out.println("No files found for doctor: " + doctorUsername);
            } else {
                System.out.println("Files retrieved for doctor: " + doctorUsername);
                for (Upload file : files) {
                    System.out.println("File: Patient Username - " + file.getPatientUsername() + ", Patient Full Name - " + file.getPatientFullName() + ", File Path - " + file.getFilePath());
                }
            }
        } catch (SQLException e) {
            System.err.println("SQL Exception: " + e.getMessage());
            e.printStackTrace();
            throw new SQLException("Error retrieving files for doctor: " + e.getMessage(), e);
        }

        return files;
    }

}
