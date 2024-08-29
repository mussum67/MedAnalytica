<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MedAnalytica Upload</title>
    <link rel="stylesheet" href="css/upload.css"> <!-- Ensure this path is correct -->
    <link rel="shortcut icon" href="assets/images/logo.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>
<body>
<div class="container">
    <div class="left">
        <img src="assets/images/medanalytica-high-resolution-logo-transparent.png" alt="MedAnalytica Logo" class="logo"><br>
        <s:form action="uploadAction" method="post" enctype="multipart/form-data">
            <label for="doctor">Select Doctor</label><br>
            <select id="doctor" name="doctorFullName" onchange="setDoctorUsername()">
                <option value="Mahdi Islam">Mahdi Islam</option>
                <option value="musa rahman">Musa Rahman</option>
                <option value="Md. Nazrul rahman">Md. Nazrul Rahman</option>
                <option value="Md. Narul rahman">Md. Narul Rahman</option>
                <option value="AJM Mahbub Rahman">A J M Mahbubur Rahman</option>
            </select>
            <!-- Hidden field to store the selected doctor's username -->
            <input type="hidden" id="doctorUsername" name="doctorUsername">
            <label for="file-upload">Upload Image</label>
            <s:file id="file-upload" name="fileUpload" /><br>
            <s:submit value="Upload" cssClass="upload-button" />

            <!-- Add message box -->
            <label for="message">Send a Message to Doctor:</label>
            <s:textarea name="message" rows="4" cols="50"/><br>

            <s:submit value="Send Message" cssClass="upload-button" />
        </s:form>
    </div>
    <div class="right"></div>
</div>
<div class="footer">
    © 2024 <a href="mainpage_v2.jsp">MedAnalytica</a> - All Rights Reserved.
</div>

<script>
    // Mapping of full names to usernames
    const doctorMapping = {
        "Mahdi Islam": "mustab",
        "musa rahman": "musa",
        "Md. Nazrul rahman": "nazrul",
        "Md. Narul rahman": "narul",
        "AJM Mahbub Rahman": "mahbub"
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
