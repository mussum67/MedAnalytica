<%--
  Created by IntelliJ IDEA.
  User: Mahdi
  Date: 6/11/2024
  Time: 10:21 PM
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
    <title>MedAnalytica Login</title>
    <!--====Fav-icon=====-->
    <link rel="stylesheet" href="css/patient_doctor_login_style.css">
    <link rel="shortcut icon" href="assets/images/logo.png" width="auto" height="auto">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
<div class="container">
    <div class="left">
        <img src="assets/images/medanalytica-high-resolution-logo-transparent.png" alt="MedAnalytica Logo" class="logo">
        <s:form action="doctorLoginAction" class="login-form">
            <s:textfield name="username" label="User Name" class="formTextField" />
            <s:password name="password" label="Password" class="formTextField" />
            <div class="login-links">
                <a href="Forget-password.jsp">Forgot password?</a>
                <a href="main_reg.jsp">New user? Please Register</a>
            </div>
            <s:submit value="Login" class="actionBtn" />
        </s:form>
    </div>
    <div class="right"></div>
</div>
<div class="footer">
    © 2024 <a href="mainpage.jsp">MedAnalytica</a> - All Rights Reserved.
</div>
</body>
</html>


