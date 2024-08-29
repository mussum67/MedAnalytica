<%--
  Created by IntelliJ IDEA.
  User: Mahdi
  Date: 6/11/2024
  Time: 11:47 PM
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
    <title>Patient Home - MedAnalytica</title>
    <link rel="stylesheet" href="css/patient_home_style.css">
    <link rel="shortcut icon" href="assets/images/logo.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
<div class="container">
    <header>
        <img src="assets/images/medanalytica-high-resolution-logo-transparent.png" alt="MedAnalytica Logo" class="logo">
        <h1>Welcome to MedAnalytica, <s:property value="#session.loggedInUser" />!</h1>
        <nav>
            <ul>
                <li><a href="patientProfile.action">Profile</a></li>
                <li><a href="upload.jsp">Upload image</a></li>
                <li><a href="searchDoctors.action">Search Doctors</a></li>
                <li><a href="logoutAction.action">Logout</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section>
            <h2>Your Dashboard</h2>
            <p>Here you can view your profile, search for doctors, and upload your medical image.</p>
        </section>
    </main>
    <footer>
        © 2024 <a href="mainpage.jsp">MedAnalytica</a> - All Rights Reserved.
    </footer>
</div>
</body>
</html>
