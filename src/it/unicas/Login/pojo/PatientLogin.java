package it.unicas.Login.pojo;

public class PatientLogin {
    private String username;
    private String password; // Add this for authentication purposes only

    // Getters and setters
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
