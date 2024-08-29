package it.unicas.Upload.action;

import com.opensymphony.xwork2.ActionSupport;
import it.unicas.Upload.dao.UploadDAO;
import it.unicas.Upload.pojo.Upload;
import org.apache.struts2.ServletActionContext;

import java.util.List;

public class DoctorFilesAction extends ActionSupport {
    private String doctorUsername;
    private List<Upload> patientFiles;

    // Getters and setters
    public String getDoctorUsername() {
        return doctorUsername;
    }

    public void setDoctorUsername(String doctorUsername) {
        this.doctorUsername = doctorUsername;
    }

    public List<Upload> getPatientFiles() {
        return patientFiles;
    }

    public void setPatientFiles(List<Upload> patientFiles) {
        this.patientFiles = patientFiles;
    }

    @Override
    public String execute() {
        // Fetch the doctor's username from the session
        doctorUsername = (String) ServletActionContext.getRequest().getSession().getAttribute("doctorUsername");
        System.out.println("Doctor username retrieved from session: " + doctorUsername);

        if (doctorUsername == null || doctorUsername.isEmpty()) {
            addActionError("Doctor is not logged in.");
            return LOGIN;
        }

        try {
            // Retrieve the files for this doctor from the database
            UploadDAO uploadDAO = new UploadDAO();
            patientFiles = uploadDAO.getFilesForDoctor(doctorUsername);

            // Logging to check if patientFiles is populated
            if (patientFiles == null || patientFiles.isEmpty()) {
                System.out.println("No files retrieved for doctor: " + doctorUsername);
            } else {
                System.out.println("Files retrieved for doctor: " + doctorUsername);
                for (Upload file : patientFiles) {
                    System.out.println("File: Patient Full Name - " + file.getPatientFullName() + ", File Path - " + file.getFilePath());
                }
            }
        } catch (Exception e) {
            addActionError("Error retrieving files: " + e.getMessage());
            e.printStackTrace();
            return ERROR;
        }

        return SUCCESS;
    }
}
