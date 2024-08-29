<%--
  Created by IntelliJ IDEA.
  User: Mahdi
  Date: 6/2/2024
  Time: 6:09 PM
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
    <title>MedAnalytica Registration</title>
    <!--====Fav-icon=====-->
    <link rel="stylesheet" href="css/main_reg.css">
    <link rel="shortcut icon" href="assets/images/logo.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <script type="text/javascript">
        function handleRegisterAsChange(event) {
            const registerAs = event.target.value;
            if (registerAs === "patient") {
                window.location.href = "patient_reg.jsp"; // Redirect to patient registration page
            } else if (registerAs === "doctor") {
                window.location.href = "doctor_reg.jsp"; // Redirect to doctor registration page
            }
        }

        document.addEventListener("DOMContentLoaded", () => {
            const registerAsSelect = document.getElementById("registerAs");
            registerAsSelect.addEventListener("change", handleRegisterAsChange);
        });
    </script>
</head>
<body>
<div class="container">
    <div class="left">
        <img src="assets/images/medanalytica-high-resolution-logo-transparent.png" alt="MedAnalytica Logo" class="logo">
        <form class="register-form" action="#">
            <select id="registerAs" required>
                <option value="" disabled selected>Register As</option>
                <option value="patient">Patient</option>
                <option value="doctor">Doctor</option>
            </select>
            <a href="login.jsp"> Already have an account? Sign in</a>
        </form>
    </div>
    <div class="right"></div>
</div>
<div class="footer">
    © 2024 <a href="mainpage.jsp">MedAnalytica</a> - All Rights Reserved.
</div>
</body>
</html>

