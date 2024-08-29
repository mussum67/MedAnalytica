package it.unicas.doctor.action;

import com.opensymphony.xwork2.ActionSupport;
import it.unicas.doctor.dao.DoctorRegDAO;
import it.unicas.doctor.pojo.Doctor;

public class DoctorRegAction extends ActionSupport {
    private Doctor doctor;
    private String confirmPassword;
    private DoctorRegDAO doctorRegDAO = new DoctorRegDAO();

    @Override
    public String execute() {
        // Validate that the username does not already exist
        if (doctorRegDAO.usernameExists(doctor.getUsername())) {
            addActionError("Username already exists. Please choose a different username.");
            return INPUT;
        }

        // Validate that the passwords match
        if (!doctor.getPassword().equals(confirmPassword)) {
            addActionError("Passwords do not match. Please re-enter.");
            return INPUT;
        }

        // Save the doctor registration details
        doctorRegDAO.saveDoctor(doctor);
        return SUCCESS;
    }

    // Getters and setters for doctor and confirmPassword
    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}
