package it.unicas.patient.action;

import com.opensymphony.xwork2.ActionSupport;
import it.unicas.patient.dao.PatientRegDAO;
import it.unicas.patient.pojo.Patient;

public class PatientRegAction extends ActionSupport {
    private Patient patient;
    private String confirmPassword;
    private PatientRegDAO patientRegDAO = new PatientRegDAO();

    @Override
    public String execute() {
        // Validate that the username does not already exist
        if (patientRegDAO.usernameExists(patient.getUsername())) {
            addActionError("Username already exists. Please choose a different username.");
            return INPUT;
        }

        // Validate that the passwords match
        if (!patient.getPassword().equals(confirmPassword)) {
            addActionError("Passwords do not match. Please re-enter.");
            return INPUT;
        }

        // Save the patient registration details
        patientRegDAO.savePatient(patient);
        return SUCCESS;
    }

    // Getters and setters for patient and confirmPassword
    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}
