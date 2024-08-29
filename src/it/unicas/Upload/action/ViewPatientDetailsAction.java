package it.unicas.Upload.action;

import com.opensymphony.xwork2.ActionSupport;
import it.unicas.Upload.dao.PatientDAO;
import it.unicas.Upload.pojo.Patient;

public class ViewPatientDetailsAction extends ActionSupport {
    private String patientUsername;
    private Patient patient;

    // Getter and Setter methods
    public String getPatientUsername() {
        return patientUsername;
    }

    public void setPatientUsername(String patientUsername) {
        this.patientUsername = patientUsername;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    @Override
    public String execute() {
        try {
            // Fetch patient details using the provided username
            PatientDAO patientDAO = new PatientDAO();
            patient = patientDAO.getPatientDetails(patientUsername);

            if (patient == null) {
                addActionError("Patient not found.");
                return ERROR;
            }
        } catch (Exception e) {
            addActionError("Error retrieving patient details: " + e.getMessage());
            return ERROR;
        }
        return SUCCESS;
    }
}

