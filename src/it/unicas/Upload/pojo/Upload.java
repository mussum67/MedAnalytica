package it.unicas.Upload.pojo;

public class Upload {
    private String doctorUsername;
    private String patientUsername;
    private String patientFullName;
    private String filePath;

    // Constructors
    public Upload() {}

    public Upload(String doctorUsername, String patientUsername,  String filePath) {
        this.doctorUsername = doctorUsername;
        this.patientUsername = patientUsername;
        this.filePath = filePath;
    }

    public Upload(String doctorUsername, String patientUsername, String patientFullName, String filePath) {
        this.doctorUsername = doctorUsername;
        this.patientUsername = patientUsername;
        this.patientFullName = patientFullName;
        this.filePath = filePath;
    }

    // Getters and Setters
    public String getDoctorUsername() {
        return doctorUsername;
    }

    public void setDoctorUsername(String doctorUsername) {
        this.doctorUsername = doctorUsername;
    }

    public String getPatientUsername() {
        return patientUsername;
    }

    public void setPatientUsername(String patientUsername) {
        this.patientUsername = patientUsername;
    }
    public String getPatientFullName() {
        return patientFullName;
    }

    public void setPatientFullName(String patientFullName) {
        this.patientFullName = patientFullName;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }
}

