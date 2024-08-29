<%--
  Created by IntelliJ IDEA.
  User: Mahdi
  Date: 6/1/2024
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Mahdi
  Date: 6/1/2024
  Time: 10:19 PM
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--======title======-->
    <title>Medical Website JSP</title>
    <!--===CSS===========-->
    <link rel="stylesheet" href="css/mainpage.css">
    <!--====Fav-icon=====-->
    <link rel="shortcut icon" href="assets/images/logo.png" width="auto" height="auto">
    <!---Import-Poppins-Font====-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>

<!--=======Hero-Section======-->
<section id="hero">

    <!---*****NAVIGATION*****-->
    <nav class="navigation">
        <!--LOGO-->
        <img src="assets/images/medanalytica-high-resolution-logo-transparent.png" alt="Logo" width="80" height="auto">
        <!---Menu-->
        <ul class="menu">
            <li><a href="#">Find a Doctor</a></li>
            <li><a href="service.jsp">Our Services</a></li>
            <li><a href="#">Review</a></li>
        </ul>
        <!---LOGIN-->
        <a href="login.jsp" class="nav-Login-btn">Login</a>
        <!---Register-->
        <a href="main_reg.jsp" class="nav-register-btn">Register</a>

    </nav><!------nav-end------>
    <!---*****content*****---->
    <div class="hero-content">
        <!----****text****-->
        <div class="hero-text">
            <h1>Empowering Healthcare Decisions through Advanced Data Analysis</h1>
            <p>Our team of experienced doctors are here to help you feel better</p>
            <!----btns------>
            <div class="hero-text-btns">
                <a href="#">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    Find Doctor</a>
                <a href="login.jsp">
                    <i class="fa-solid fa-check"></i>
                    Book Appointment</a>
            </div>
        </div>
        <!------****img*****-->
        <div class="hero-img">
            <img src="assets/images/main-bg.png" alt="">
        </div>
    </div>

</section><!------hero-end-------->
<!---------=======Search========------->

<!-----****What we provide*****-->
<section class="what-we-provide">

    <!----*** box1*****-->
    <div class="w-info-box w-info-box1">
        <!----icon----->
        <div class="w-info-icon">
            <i class="fa-solid fa-capsules"></i>
        </div>
        <!---text---->
        <div class="w-info-text">
            <strong>Specialised Service</strong>
            <p>Our team of experienced doctors are here to help you feel better</p>
        </div>
    </div>
    <!----*** box2*****-->
    <div class="w-info-box w-info-box2">
        <!----icon----->
        <div class="w-info-icon">
            <i class="fa-regular fa-comment"></i>
        </div>
        <!---text---->
        <div class="w-info-text">
            <strong>24/7 Advance Care</strong>
            <p>Our team of experienced doctors are here to help you feel better</p>
        </div>
    </div>
    <!----*** box3 *****-->
    <div class="w-info-box w-info-box3">
        <!----icon----->
        <div class="w-info-icon">
            <i class="fa-solid fa-square-poll-horizontal"></i>
        </div>
        <!---text---->
        <div class="w-info-text">
            <strong>Get Result Online</strong>
            <p>Our team of experienced doctors are here to help you feel better</p>
        </div>
    </div>
</section><!---end-->

</body>
</html>


