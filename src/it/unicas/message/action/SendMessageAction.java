package it.unicas.message.action;

import com.opensymphony.xwork2.ActionSupport;
import it.unicas.message.dao.MessageDAO;
import it.unicas.message.pojo.Message;
import org.apache.struts2.ServletActionContext;

import java.sql.SQLException;

public class SendMessageAction extends ActionSupport {
    private String toUsername;
    private String message;

    public String getToUsername() {
        return toUsername;
    }

    public void setToUsername(String toUsername) {
        this.toUsername = toUsername;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String execute() {
        String fromUsername = (String) ServletActionContext.getRequest().getSession().getAttribute("doctorUsername");

        Message message = new Message(fromUsername, toUsername, this.message);
        MessageDAO messageDAO = new MessageDAO();

        try {
            messageDAO.saveMessage(message);
            addActionMessage("Message sent successfully!");
            // Return success to indicate the message was sent
            return SUCCESS;
        } catch (SQLException e) {
            e.printStackTrace();
            addActionError("Error sending message: " + e.getMessage());
            return ERROR;
        }
    }
}
