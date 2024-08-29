<%--
  Created by IntelliJ IDEA.
  User: Mahdi
  Date: 6/11/2024
  Time: 11:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="pippo" uri="/struts-dojo-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctor Home - MedAnalytica</title>
    <link rel="stylesheet" href="css/doctor_home_style.css">
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
    <header>
        <img src="assets/images/medanalytica-high-resolution-logo-transparent.png" alt="MedAnalytica Logo" class="logo">
        <h1>Welcome to MedAnalytica, Dr. <s:property value="%{#session.doctorFullName}"/>!</h1>
        <nav>
            <ul>
                <li><a href="doctorProfile.action">Profile</a></li>
                <li><a href="patientFiles.action">View Patients</a></li>
                <li><a href="doctorMessages.action">Messages</a></li> <!-- Add this line for the Messages button -->
                <li><a href="logoutAction.action">Logout</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section>
            <h2>Your Dashboard</h2>
            <p>Here you can manage your profile, view patient information, and manage appointments.</p>
        </section>
    </main>
    <footer>
        © 2024 <a href="mainpage_v2.jsp">MedAnalytica</a> - All Rights Reserved.
    </footer>
</div>
</body>
</html>

