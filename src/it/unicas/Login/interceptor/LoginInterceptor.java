package it.unicas.Login.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;

public class LoginInterceptor extends AbstractInterceptor {

    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        HttpSession session = ServletActionContext.getRequest().getSession(false);

        // If session is null or no user is logged in, redirect to login page
        if (session == null || session.getAttribute("loggedInUser") == null) {
            return "login";
        }

        // Proceed to the next interceptor or action
        return invocation.invoke();
    }
}
