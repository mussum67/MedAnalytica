package it.unicas.Login.action;


import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;

public class LogoutAction extends ActionSupport {

    @Override
    public String execute() {
        // Invalidate the session to log the user out
        HttpSession session = ServletActionContext.getRequest().getSession(false);
        if (session != null) {
            session.invalidate();
        }
        // Redirect to login page
        return SUCCESS;
    }
}

