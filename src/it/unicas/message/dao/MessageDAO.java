package it.unicas.message.dao;

import it.unicas.message.pojo.Message;
import it.unicas.message.dbutil.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MessageDAO {

    public void saveMessage(Message message) throws SQLException {
        String sql = "INSERT INTO messages (from_username, to_username, message) VALUES (?, ?, ?)";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, message.getFromUsername());
            stmt.setString(2, message.getToUsername());
            stmt.setString(3, message.getMessageContent()); // Corrected to use getMessageContent()
            stmt.executeUpdate();
        }
    }

    public List<Message> getMessagesForUser(String username) throws SQLException {
        List<Message> messages = new ArrayList<>();
        String sql = "SELECT * FROM messages WHERE to_username = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Message message = new Message(
                        rs.getString("from_username"),
                        rs.getString("to_username"),
                        rs.getString("message")
                );
                messages.add(message);
            }
        }

        return messages;
    }

    // Method to get messages received by the doctor
    public List<Message> getMessagesForDoctor(String doctorUsername) throws SQLException {
        List<Message> messages = new ArrayList<>();
        String sql = "SELECT * FROM messages WHERE to_username = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, doctorUsername);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Message message = new Message(
                        rs.getString("from_username"),
                        rs.getString("to_username"),
                        rs.getString("message")
                );
                messages.add(message);
            }
        }

        return messages;
    }

    // Method to get messages sent by the doctor
    public List<Message> getMessagesFromDoctor(String doctorUsername) throws SQLException {
        List<Message> messages = new ArrayList<>();
        String sql = "SELECT * FROM messages WHERE from_username = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, doctorUsername);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Message message = new Message(
                        rs.getString("from_username"),
                        rs.getString("to_username"),
                        rs.getString("message")
                );
                messages.add(message);
            }
        }

        return messages;
    }
}
