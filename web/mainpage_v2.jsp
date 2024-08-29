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
    <!--====== Title ======-->
    <title>MedAnalytica | Advanced Healthcare Analysis</title>
    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="assets/images/logo.png" type="image/png" />
    <!--====== Bootstrap css ======-->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!--====== Line Icons css ======-->
    <link rel="stylesheet" href="css/lineicons.css" />
    <!--====== Main CSS ======-->
    <link rel="stylesheet" href="css/mainpage_v2.css">
    <!--====== FontAwesome ======-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
<%@ include file="app_navbar.jsp" %>


<!--=======Hero-Section======-->
<section id="hero">
    <!---*****NAVIGATION*****-->
    <nav class="navigation">
        <!--LOGO-->
        <img src="assets/images/medanalytica-high-resolution-logo-transparent.png" alt="Logo" width="80" height="auto">
        <!---Menu-->
        <ul class="menu">
            <li><a href="#">About Us</a></li>
            <li><a href="service.jsp">Our Services</a></li>
            <li><a href="#">Review</a></li>
        </ul>
        <!-- Login and Register Buttons -->
        <div class="nav-buttons">
            <a href="login.jsp" class="nav-login-btn">Login</a>
            <a href="main_reg.jsp" class="nav-register-btn">Register</a>
        </div>
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
                    Upload Medical Image</a>
            </div>
        </div>
        <!------****img*****-->
        <div class="hero-img">
            <img src="assets/images/d4.png" alt="Hero Image">
        </div>
    </div>
</section><!------hero-end-------->

<!---------=======Our Services Section========------->
<section id="services" class="services-area services-eight">
    <div class="section-title">
        <h2 class="fw-bold">Our Best Services</h2>
        <p>
            MedAnalytica offers comprehensive solutions to streamline and enhance the efficiency of healthcare organizations.
        </p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="single-service">
                    <div class="service-icon">
                        <i class="lni lni-capsule"></i>
                    </div>
                    <div class="service-content">
                        <h4>Patient Registration and Management</h4>
                        <p>
                            Simplify the patient registration process, capturing vital details such as demographics, medical history, and insurance information.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-service">
                    <div class="service-icon">
                        <i class="lni lni-bootstrap"></i>
                    </div>
                    <div class="service-content">
                        <h4>Electronic Health Records (EHR)</h4>
                        <p>
                            Access patient information in real-time, ensuring seamless communication and collaboration among different departments.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-service">
                    <div class="service-icon">
                        <i class="lni lni-dashboard"></i>
                    </div>
                    <div class="service-content">
                        <h4>Imaging Integration</h4>
                        <p>
                            Integrate with laboratory and imaging departments for faster and more accurate diagnoses.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-service">
                    <div class="service-icon">
                        <i class="lni lni-layers"></i>
                    </div>
                    <div class="service-content">
                        <h4>Security and Compliance</h4>
                        <p>
                            Prioritize the security and privacy of patient information, ensuring compliance with regulations such as HIPAA.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-service">
                    <div class="service-icon">
                        <i class="lni lni-reload"></i>
                    </div>
                    <div class="service-content">
                        <h4>Regular Updates</h4>
                        <p>
                            Ensure our system is reliable and scalable, meeting the evolving needs of modern healthcare facilities.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!---------=======End of Our Services Section========------->

<!-- ===== About Us Section ===== -->
<section class="about-area">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-12">
                <div class="about-image">
                    <img src="assets/images/IA_Salut.jpeg" alt="About Us">
                </div>
            </div>
            <div class="col-lg-6 col-12">
                <div class="about-content">
                    <h2>About MedAnalytica</h2>
                    <p>MedAnalytica is dedicated to providing comprehensive solutions for healthcare organizations. Our platform incorporates advanced data analysis to support healthcare decisions, integrating with patient management, EHR systems, and diagnostic departments for a streamlined healthcare experience.</p>
                    <a href="#" class="btn">Learn More</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ===== End About Us Section ===== -->

<!-- ===== Contact Section ===== -->
<section id="contact" class="contact-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="contact-item">
                    <div class="contact-icon">
                        <i class="lni lni-phone"></i>
                    </div>
                    <div class="contact-content">
                        <h4>Contact Us</h4>
                        <p>Phone: 0984537278623</p>
                        <p>Email: support@medanalytica.com</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="contact-item">
                    <div class="contact-icon">
                        <i class="lni lni-map-marker"></i>
                    </div>
                    <div class="contact-content">
                        <h4>Address</h4>
                        <p>123 MedAnalytica Blvd, Health City, HC 45678</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="contact-item">
                    <div class="contact-icon">
                        <i class="lni lni-alarm-clock"></i>
                    </div>
                    <div class="contact-content">
                        <h4>Working Hours</h4>
                        <p>24 Hours / 7 Days Open</p>
                        <p>Office time: 10 AM - 5:30 PM</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ===== End Contact Section ===== -->

<!-- ===== Footer ===== -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-12">
                <p>MedAnalytica- Healthcare Information Management System (MIS), offers comprehensive solutions to streamline and enhance the efficiency of healthcare organizations.<br> © 2024 <a href="mainpage_v2.jsp">MedAnalytica</a> - All Rights Reserved. </p>
            </div>
            <div class="col-lg-6 col-md-12 text-right">
                <ul class="social">
                    <li><a href="https://www.facebook.com/Official.IUT.OIC"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>

<%@ include file="app_footer.jsp" %>
<!-- Scroll to Top Button -->
<a href="#" class="scroll-top btn-hover">
    <i class="lni lni-chevron-up"></i>
</a>

<!--====== JS Files ======-->
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/glightbox.min.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/tiny-slider.js"></script>

<script>
    //===== Close navbar-collapse when a  clicked
    let navbarToggler = document.querySelector(".navbar-toggler");
    navbarToggler.addEventListener("click", function () {
        navbarToggler.classList.toggle("active");
    });

    // ==== Left sidebar toggle
    let sidebarLeft = document.querySelector(".sidebar-left");
    let overlayLeft = document.querySelector(".overlay-left");
    let sidebarClose = document.querySelector(".sidebar-close .close");

    overlayLeft.addEventListener("click", function () {
        sidebarLeft.classList.toggle("open");
        overlayLeft.classList.toggle("open");
    });
    sidebarClose.addEventListener("click", function () {
        sidebarLeft.classList.remove("open");
        overlayLeft.classList.remove("open");
    });

    // ===== Navbar side menu
    let sideMenuLeft = document.querySelector(".navbar .menu-bar");

    sideMenuLeft.addEventListener("click", function () {
        sidebarLeft.classList.add("open");
        overlayLeft.classList.add("open");
    });

    //========= glightbox
    GLightbox({
        'href': 'https://www.youtube.com/watch?v=r44RKWyfcFw&fbclid=IwAR21beSJORalzmzokxDRcGfkZA1AtRTE__l5N4r09HcGS5Y6vOluyouM9EM',
        'type': 'video',
        'source': 'youtube', // vimeo, youtube or local
        'width': 900,
        'autoplayVideos': true,
    });
</script>
</body>
</html>
