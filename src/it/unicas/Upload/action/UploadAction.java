package it.unicas.Upload.action;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.ActionSupport;

import it.unicas.Upload.dao.UploadDAO;
import it.unicas.Upload.pojo.Upload;
import org.apache.struts2.ServletActionContext;
import it.unicas.message.pojo.Message;
import it.unicas.message.dao.MessageDAO;


public class UploadAction extends ActionSupport {
    private File fileUpload;
    private String fileUploadFileName;
    private String fileUploadContentType;
    private String doctorFullName; // This is still for display purposes if needed
    private String doctorUsername; // This is now provided directly by the form
    private String message; // New field for the message

    public File getFileUpload() {
        return fileUpload;
    }

    public void setFileUpload(File fileUpload) {
        this.fileUpload = fileUpload;
    }

    public String getFileUploadFileName() {
        return fileUploadFileName;
    }

    public void setFileUploadFileName(String fileUploadFileName) {
        this.fileUploadFileName = fileUploadFileName;
    }

    public String getFileUploadContentType() {
        return fileUploadContentType;
    }

    public void setFileUploadContentType(String fileUploadContentType) {
        this.fileUploadContentType = fileUploadContentType;
    }

    public String getDoctorFullName() {
        return doctorFullName;
    }

    public void setDoctorFullName(String doctorFullName) {
        this.doctorFullName = doctorFullName;
    }

    public String getDoctorUsername() {
        return doctorUsername;
    }

    public void setDoctorUsername(String doctorUsername) {
        this.doctorUsername = doctorUsername;
    }
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String execute() {
        // Assuming the patient username is retrieved from the session
        String patientUsername = (String) ServletActionContext.getRequest().getSession().getAttribute("patientUsername");

        if (fileUpload != null) {
            try {
                // Define the directory to save the uploaded files
                String saveDirectory = "D:/Study/Higher Studies/MAIA/Musarrat/Semester 2/Distributed Programming/Practice/ProductManagementApplicationIJ_II/web/directory";

                // Generate a unique file name to avoid overwriting
                String uniqueFileName = generateUniqueFileName(fileUploadFileName);

                // Create a new File object with the save directory and the unique file name
                File destFile = new File(saveDirectory, uniqueFileName);

                // Copy the uploaded file to the destination file
                FileUtils.copyFile(fileUpload, destFile);

                // Save file information to the database
                Upload upload = new Upload(doctorUsername, patientUsername, destFile.getAbsolutePath());
                UploadDAO uploadDAO = new UploadDAO();
                uploadDAO.saveUploadDetails(upload);

                // Save the message to the database
                if (message != null && !message.trim().isEmpty()) {
                    Message msg = new Message(patientUsername, doctorUsername, message);
                    MessageDAO messageDAO = new MessageDAO();
                    messageDAO.saveMessage(msg);
                }

                addActionMessage("File uploaded successfully!");
                return SUCCESS;

            } catch (IOException e) {
                addActionError("File upload failed: " + e.getMessage());
                e.printStackTrace();
                return ERROR;
            } catch (SQLException e) {
                addActionError("Database error: " + e.getMessage());
                e.printStackTrace();
                return ERROR;
            }
        } else {
            addActionError("No file uploaded");
            return INPUT;
        }
    }

    private String generateUniqueFileName(String originalFileName) {
        String uniqueID = UUID.randomUUID().toString();
        String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
        return uniqueID + extension;
    }
}
