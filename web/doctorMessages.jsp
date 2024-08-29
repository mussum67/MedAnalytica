<%--
  Created by IntelliJ IDEA.
  User: Mahdi
  Date: 6/18/2024
  Time: 11:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="pippo" uri="/struts-dojo-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Messages - MedAnalytica</title>
    <link rel="stylesheet" href="css/doctorMessages.css"> <!-- Ensure this path is correct -->
    <link rel="shortcut icon" href="assets/images/logo.png">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
<div class="container">
    <h1>Doctor Messages</h1>

    <!-- Form to send a message to a patient -->
    <s:form action="sendMessageAction" method="post">
        <label for="patient">Select Patient:</label>
        <s:select id="patient" name="toUsername"
                  list="#session.patientList" listKey="key" listValue="value"
                  headerKey="-1" headerValue="Select a patient"/>

        <label for="message">Message:</label>
        <s:textarea id="message" name="messageContent" rows="4"/>

        <s:submit value="Send Message" cssClass="send-button"/>
    </s:form>

    <!-- Table to display messages received by the doctor -->
    <h2>Messages Received</h2>
    <table class="message-table">
        <thead>
        <tr>
            <th>From Patient</th>
            <th>Message</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator value="receivedMessages" var="msg">
            <tr>
                <td><s:property value="#msg.fromFullName"/></td>
                <td><s:property value="#msg.messageContent"/></td>
            </tr>
        </s:iterator>
        <s:if test="receivedMessages.isEmpty()">
            <tr>
                <td colspan="2">No messages received.</td>
            </tr>
        </s:if>
        </tbody>
    </table>

    <!-- Table to display messages sent by the doctor -->
    <h2>Messages Sent</h2>
    <table class="message-table">
        <thead>
        <tr>
            <th>To Patient</th>
            <th>Message</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator value="sentMessages" var="msg">
            <tr>
                <td><s:property value="#msg.toFullName"/></td>
                <td><s:property value="#msg.messageContent"/></td>
            </tr>
        </s:iterator>
        <s:if test="sentMessages.isEmpty()">
            <tr>
                <td colspan="2">No messages sent.</td>
            </tr>
        </s:if>
        </tbody>
    </table>
</div>
</body>
</html>