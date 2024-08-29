<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Patient Details - MedAnalytica</title>
    <link rel="stylesheet" href="css/patientDetails.css"> <!-- Ensure this path is correct -->
    <link rel="shortcut icon" href="assets/images/logo.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
<div class="container">
    <h1>Patient Details for <s:property value="patient.firstname"/> <s:property value="patient.lastname"/></h1>
    <table class="details-table">
        <tr>
            <th>Full Name</th>
            <td><s:property value="patient.firstname"/> <s:property value="patient.lastname"/></td>
        </tr>
        <tr>
            <th>Age</th>
            <td><s:property value="patient.age"/></td>
        </tr>
        <tr>
            <th>Gender</th>
            <td><s:property value="patient.gender"/></td>
        </tr>
        <tr>
            <th>Blood Group</th>
            <td><s:property value="patient.bloodgroup"/></td>
        </tr>
    </table>
    <br>
    <a href="doctorHome.jsp">Back to Dashboard</a>
</div>
</body>
</html>
