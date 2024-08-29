package it.unicas.message.pojo;

public class Message {
    private String fromUsername;
    private String toUsername;
    private String messageContent;
    private String fromFullName; // For displaying the full name
    private String toFullName;   // For displaying the full name

    // Constructors
    public Message() {}

    public Message(String fromUsername, String toUsername, String messageContent) {
        this.fromUsername = fromUsername;
        this.toUsername = toUsername;
        this.messageContent = messageContent;
    }

    // Getters and Setters
    public String getFromUsername() {
        return fromUsername;
    }

    public void setFromUsername(String fromUsername) {
        this.fromUsername = fromUsername;
    }

    public String getToUsername() {
        return toUsername;
    }

    public void setToUsername(String toUsername) {
        this.toUsername = toUsername;
    }

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent;
    }

    public String getFromFullName() {
        return fromFullName;
    }

    public void setFromFullName(String fromFullName) {
        this.fromFullName = fromFullName;
    }

    public String getToFullName() {
        return toFullName;
    }

    public void setToFullName(String toFullName) {
        this.toFullName = toFullName;
    }
}
