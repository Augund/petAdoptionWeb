<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Application Confirmation | Pawfect</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/mainPageStyle.css">
<link rel="stylesheet" href="css/centreTheme.css"></head>
<body class="centre ">
<div class="sidebar-layout" id="sidebar-layout">
        <aside class="sidebar" id="sidebar">
        
        
        
            <nav>
                <ul class="nav-list">
                    <li>
                        <a href="home.html">
                        <img alt="" src="images/sidebar-comic/home-sidebar.png" class="sidebar-button">
                        <span class="nav-label">Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="pets.jsp">
                        <img alt="" src="images/sidebar-comic/ourPet-sidebar.png" class="sidebar-button">
                        <span class="nav-label">Our Pets</span>
                        </a>
                    </li>
                    <li>
                        <a aria-current="page" href="Adopt.jsp">
                        <img alt="" src="images/sidebar-comic/adopt-sidebar.png" class="sidebar-button">
                        <span class="nav-label">Adopt</span>
                        </a>
                    </li>
                    <li>
                        <a href="#contact">
                        <img alt="" src="images/sidebar-comic/contact-sidebar.png" class="sidebar-button">
                        <span class="nav-label">Contact</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </aside>
        
		<div class="headerAndMain">
			<header class="header">
			
         <button class="header-toggle" id="header-toggle"
         type="button" aria-label="Toggle navigation" aria-controls="sidebar" aria-expanded="true" >
         	 
	         <img alt="" src="images/catWink.png" class="header-image image-open">
	         <img alt="" src="images/catScared.png" class="header-image image-close">
         </button>
         
         
	        <h1 class="header-title">Pawfect Pet Adoption Centre</h1>
	        <img alt="" src="images/whiteCat.png" width="100">
	        
	    </header>
<main class="content form-area">
        <h2>Application Submitted Successfully!</h2>
        
        <p class="thank-you-msg">
            Thank you very much, <strong>${fullName}</strong>! We have received your application to adopt <strong>${petOfInterest}</strong>.
        </p>

        <h3>Submitted Information Summary:</h3>
        <ul>
            <li><strong>Full Name:</strong> ${fullName}</li>
            <li><strong>Email:</strong> ${email}</li>
            <li><strong>Phone Number:</strong> ${phone}</li>
            <li><strong>Pet of Interest:</strong> ${petOfInterest}</li>
            <li><strong>Housing Type:</strong> ${housingType}</li>
            <li><strong>Reason for Adoption:</strong> ${reason}</li>
            <li><strong>Home Visit Agreement:</strong> ${empty agreement ? "Not Agreed" : "Agreed"}</li>
        </ul>
        
        <br>
        <a href="home.html">Return to Home</a>
    </main>
<footer id="contact" class="centre-foot">&copy; Team SWE306, 2026. All rights reserved. &nbsp; <a href="tel:+60123456789">Contact: +60 12 345 6789</a></footer>
</div></div>
<script src="js/script.js"></script>
</body></html>