<%--
  Created by IntelliJ IDEA.
  User: Mahdi
  Date: 6/13/2024
  Time: 1:52 PM
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
    <title>Our Services - MedAnalytica</title>
    <!-- Link to the CSS file -->
    <link rel="stylesheet" href="css/service.css">
    <link rel="shortcut icon" href="assets/images/logo.png">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
    <header class="header">
        <img src="assets/images/medanalytica-high-resolution-logo-transparent.png" alt="MedAnalytica Logo" class="logo">
        <h1>MedAnalytica Services</h1>
    </header>
    <nav class="navbar">
        <a href="mainpage_v2.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="services.jsp" class="active">Our Services</a>
        <a href="contact.jsp">Contact</a>
    </nav>
    <main class="main-content">
        <section class="service">
            <h2>Medical Report Generation</h2>
            <p>MedAnalytica offers an efficient system for generating comprehensive medical reports based on patient examinations. This feature enables healthcare providers to document and review patient health information accurately and efficiently.</p>
        </section>
        <section class="service">
            <h2>Specialized Disease Information</h2>
            <p>Our platform provides detailed information about various diseases, helping both doctors and patients to understand medical conditions better. This feature includes symptoms, treatments, and management tips for a wide range of diseases.</p>
        </section>
        <section class="service">
            <h2>Medical Imaging Analysis</h2>
            <p>MedAnalytica integrates advanced tools for analyzing medical images. Our platform supports the analysis of different types of medical imaging, offering a comprehensive solution for healthcare professionals to diagnose and treat patients effectively.</p>
        </section>
    </main>
    <footer class="footer">
        © 2024 <a href="mainpage.jsp">MedAnalytica</a> - All Rights Reserved.
    </footer>
</div>
</body>
</html>
