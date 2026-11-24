<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pet-data.jspf" %>
<!DOCTYPE html>
<html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Adoption Interest Form | Pawfect</title>
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
        <h2>Adoption Interest Application</h2>
        
        <form id="adoptionForm" action="AdoptionServlet" method="POST" onsubmit="return validateForm()">
            
            <label for="fullName">Full Name:</label><br>
            <input type="text" id="fullName" name="fullName"><br>
            <span id="nameError" class="error"></span><br><br>

            <label for="email">Email:</label><br>
            <input type="text" id="email" name="email"><br>
            <span id="emailError" class="error"></span><br><br>

            <label for="phone">Phone Number:</label><br>
            <input type="text" id="phone" name="phone"><br>
            <span id="phoneError" class="error"></span><br><br>

            <label for="petOfInterest">Pet of Interest:</label><br>
            <select id="petOfInterest" name="petOfInterest">
                <option value="">-- Select a Pet --</option>
                <% for (String[] pet : pets) { String label = pet[1] + " (" + pet[2] + ")"; %>
<option value="<%= label %>" <%= pet[0].equals(request.getParameter("petId")) ? "selected" : "" %>><%= label %></option>
<% } %></select><br>
            <span id="petError" class="error"></span><br><br>

            <label>Housing Type:</label><br>
            
            <input type="radio" id="apartment" name="housingType" value="Apartment/Condominium">
            <label for="apartment">Apartment/Condominium</label>
            
            <input type="radio" id="landed" name="housingType" value="Landed House">
            <label for="landed">Landed House</label>
            
            <input type="radio" id="others" name="housingType" value="Others">
            <label for="others">Others</label><br>
            
            <span id="housingError" class="error"></span><br><br>

            <label for="reason">Reason for Adoption:</label><br>
            <textarea id="reason" name="reason" rows="4" cols="50"></textarea><br>
            <span id="reasonError" class="error"></span><br><br>

            <input type="checkbox" id="agreement" name="agreement">
            <label for="agreement">I agree to a home visit before the adoption is approved.</label><br>
            <span id="agreementError" class="error"></span><br><br>

            <input type="submit" value="Submit Application">
        </form>
    </main>
<footer id="contact" class="centre-foot">&copy; Team SWE306, 2026. All rights reserved. &nbsp; <a href="tel:+60123456789">Contact: +60 12 345 6789</a></footer>
</div></div>
<script src="js/script.js"></script><script src="js/validation.js"></script>
</body></html>