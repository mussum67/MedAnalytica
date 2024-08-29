package it.unicas.message.action;

import com.opensymphony.xwork2.ActionSupport;
import it.unicas.message.dao.MessageDAO;
import it.unicas.Upload.dao.UploadDAO; // Adjust import if needed
import it.unicas.Upload.pojo.Upload;
import it.unicas.message.pojo.Message;
import it.unicas.Upload.dao.PatientDAO; // Adjust import if needed
import it.unicas.Upload.pojo.Patient;
import org.apache.struts2.ServletActionContext;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

public class DoctorMessagesAction extends ActionSupport {
    private String toUsername;
    private String messageContent;
    private List<Message> receivedMessages;
    private List<Message> sentMessages;
    private Map<String, String> patients;

    // Getters and setters
    public String getToUsername() {
        return toUsername;
    }

    public void setToUsername(String toUsername) {
        this.toUsername = toUsername;
    }

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent;
    }

    public List<Message> getReceivedMessages() {
        return receivedMessages;
    }

    public void setReceivedMessages(List<Message> receivedMessages) {
        this.receivedMessages = receivedMessages;
    }

    public List<Message> getSentMessages() {
        return sentMessages;
    }

    public void setSentMessages(List<Message> sentMessages) {
        this.sentMessages = sentMessages;
    }

    public Map<String, String> getPatients() {
        return patients;
    }

    public void setPatients(Map<String, String> patients) {
        this.patients = patients;
    }

    @Override
    public String execute() {
        // Assuming the doctor's username is retrieved from the session
        String doctorUsername = (String) ServletActionContext.getRequest().getSession().getAttribute("doctorUsername");

        if (doctorUsername == null || doctorUsername.isEmpty()) {
            addActionError("Doctor is not logged in.");
            return LOGIN;
        }

        try {
            MessageDAO messageDAO = new MessageDAO();
            // Retrieve messages for the doctor
            receivedMessages = messageDAO.getMessagesForDoctor(doctorUsername);
            sentMessages = messageDAO.getMessagesFromDoctor(doctorUsername);

            // Retrieve list of patients who sent files to the doctor
            UploadDAO uploadDAO = new UploadDAO();
            List<Upload> uploads = uploadDAO.getFilesForDoctor(doctorUsername);

            // Create a map of patients (username to full name)
            patients = new HashMap<>();
            for (Upload upload : uploads) {
                String patientUsername = upload.getPatientUsername();
                PatientDAO patientDAO = new PatientDAO();
                Patient patient = patientDAO.getPatientDetails(patientUsername);
                if (patient != null) {
                    patients.put(patient.getUsername(), patient.getFullName());
                }
            }

            // Debugging output
            System.out.println("Patients who sent files: " + patients);

            // Store the patient list in the session
            ServletActionContext.getRequest().getSession().setAttribute("patientList", patients);

        } catch (Exception e) {
            addActionError("Error retrieving messages or patients: " + e.getMessage());
            e.printStackTrace();
            return ERROR;
        }

        return SUCCESS;
    }
}
