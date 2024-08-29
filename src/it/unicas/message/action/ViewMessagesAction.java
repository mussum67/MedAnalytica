package it.unicas.message.action;

import com.opensymphony.xwork2.ActionSupport;
import it.unicas.message.dao.MessageDAO;
import it.unicas.message.pojo.Message;
import org.apache.struts2.ServletActionContext;

import java.sql.SQLException;
import java.util.List;

public class ViewMessagesAction extends ActionSupport {
    private List<Message> messages;

    public List<Message> getMessages() {
        return messages;
    }

    @Override
    public String execute() {
        String username = (String) ServletActionContext.getRequest().getSession().getAttribute("doctorUsername");

        MessageDAO messageDAO = new MessageDAO();

        try {
            messages = messageDAO.getMessagesForUser(username);
        } catch (SQLException e) {
            e.printStackTrace();
            addActionError("Error retrieving messages: " + e.getMessage());
            return ERROR;
        }

        return SUCCESS;
    }
}
