<%--
  Created by IntelliJ IDEA.
  User: Mahdi
  Date: 6/14/2024
  Time: 6:01 PM
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
    <title>MedAnalytica Upload</title>
    <link rel="stylesheet" href="css/upload.css"> <!-- Ensure this path is correct -->
    <link rel="shortcut icon" href="assets/images/logo.png">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="left">
        <img src="assets/images/medanalytica-high-resolution-logo-transparent.png" alt="MedAnalytica Logo" class="logo"><br>
        <s:form action="uploadAction" method="post" enctype="multipart/form-data">
            <label for="doctor">Select Doctor</label><br>
            <select id="doctor" name="doctorFullName" onchange="setDoctorUsername()">
                <s:iterator value="doctorMap" var="doctor">
                    <option value="<s:property value='key'/>"><s:property value='key'/></option>
                </s:iterator>
            </select>
            <!-- Hidden field to store the selected doctor's username -->
            <input type="hidden" id="doctorUsername" name="doctorUsername">
            <label for="file-upload">Upload Image</label>
            <s:file id="file-upload" name="fileUpload" /><br>
            <s:submit value="Upload" cssClass="upload-button" />
        </s:form>
    </div>
    <div class="right"></div>
</div>
<div class="footer">
    © 2024 <a href="mainpage.jsp">MedAnalytica</a> - All Rights Reserved.
</div>

<script>
    // Fetch the doctorMap from JSP and convert it to a JavaScript object
    const doctorMapping = {
        <s:iterator value="doctorMap" var="doctor">
        '<s:property value="key"/>': '<s:property value="value"/>',
        </s:iterator>
    };

    // Function to set the doctor username based on the selected full name
    function setDoctorUsername() {
        const fullName = document.getElementById("doctor").value;
        document.getElementById("doctorUsername").value = doctorMapping[fullName];
    }

    // Initialize the hidden field when the page loads
    document.addEventListener("DOMContentLoaded", function() {
        setDoctorUsername();
    });
</script>
</body>
</html>