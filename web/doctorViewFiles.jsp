<%--
  Created by IntelliJ IDEA.
  User: Mahdi
  Date: 6/14/2024
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="pippo" uri="/struts-dojo-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Patient Files - MedAnalytica</title>
    <!-- Link to CSS file -->
    <link rel="stylesheet" href="css/doctorViewFiles.css"> <!-- Ensure this path is correct -->
    <link rel="shortcut icon" href="assets/images/logo.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
<div class="container">
    <h1>Patient Files for Doctor <s:property value="%{#session.doctorUsername}"/></h1>
    <table class="file-table">
        <thead>
        <tr>
            <th>Patient Full Name</th> <!-- Updated header -->
            <th>Action</th>
            <th>Details</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator value="patientFiles" var="file">
            <tr>
                <td><s:property value="#file.patientFullName"/></td>
                <td><a href="<s:url action='downloadFile'><s:param name='filePath'><s:property value='#file.filePath'/></s:param></s:url>" target="_blank">Download File</a></td>
                <td><s:url action="viewPatientDetails" var="detailsUrl">
                    <s:param name="patientUsername" value="#file.patientUsername"/>
                </s:url>
                    <a href="<s:property value="%{#detailsUrl}"/>">View Patient Details</a></td>
            </tr>
        </s:iterator>
        <s:if test="patientFiles.isEmpty()">
            <tr>
                <td colspan="3">No files found for this doctor.</td>
            </tr>
        </s:if>
        </tbody>
    </table>
</div>
<div class="footer">
    © 2024 <a href="mainpage_v2.jsp">MedAnalytica</a> - All Rights Reserved.
</div>
</body>
</html>

