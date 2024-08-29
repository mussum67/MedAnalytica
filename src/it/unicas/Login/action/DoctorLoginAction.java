package it.unicas.Login.action;

import com.opensymphony.xwork2.ActionSupport;
import it.unicas.Login.dao.DoctorLoginDAO;
import it.unicas.Login.pojo.DoctorLogin;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;

public class DoctorLoginAction extends ActionSupport {
    private String username;
    private String password;

    @Override
    public String execute() {
        DoctorLoginDAO dao = new DoctorLoginDAO();
        DoctorLogin doctor = dao.authenticate(username, password);
        if (doctor != null) {
            // Store username in session (no need to store the password)
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("doctorUsername", doctor.getUsername());
            System.out.println("Doctor logged in: " + doctor.getUsername()); // Debug output
            session.setAttribute("loggedInUser", doctor.getUsername());
            System.out.println("Doctor username stored in session: " + doctor.getUsername()); // Debug output
            String doctorFullName = dao.getDoctorFullName(doctor.getUsername()); // this method retrieves the full name from the database
            session.setAttribute("doctorFullName", doctorFullName);

            // Store session information if needed
            return "doctorSuccess";
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

