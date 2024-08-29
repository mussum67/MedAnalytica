package it.unicas.Login.action;

import com.opensymphony.xwork2.ActionSupport;
import it.unicas.Login.dao.PatientLoginDAO;
import it.unicas.Login.pojo.PatientLogin;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;

public class PatientLoginAction extends ActionSupport {
    private String username;
    private String password;

    @Override
    public String execute() {
        PatientLoginDAO dao = new PatientLoginDAO();
        PatientLogin patient = dao.authenticate(username, password);
        if (patient != null) {
            // Store username in session (no need to store the password)
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("patientUsername", patient.getUsername());
            session.setAttribute("loggedInUser", patient.getUsername());
            return "patientSuccess";
        } else {
            addActionError("Invalid username or password.");
            return INPUT;
        }
    }

    // Getters and setters for username and password
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
