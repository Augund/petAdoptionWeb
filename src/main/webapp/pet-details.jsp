<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pet-data.jspf" %>
<%
String petId = request.getParameter("id");
String[] selectedPet = null;

for (String[] pet : pets) {
    if (pet[0].equals(petId)) {
        selectedPet = pet;
        break;
    }
}

if (selectedPet == null) {
    response.setStatus(404);
}

String pageTitle = selectedPet == null
    ? "Pet not found"
    : selectedPet[1];
%>
<!DOCTYPE html>
<html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title><%= pageTitle %> | Pawfect</title>
<link rel="stylesheet" href="css/pets.css">
<link rel="stylesheet" href="css/mainPageStyle.css">
<link rel="stylesheet" href="css/centreTheme.css"></head>
<body class="centre pets-page">
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
                        <a aria-current="page" href="pets.jsp">
                        <img alt="" src="images/sidebar-comic/ourPet-sidebar.png" class="sidebar-button">
                        <span class="nav-label">Our Pets</span>
                        </a>
                    </li>
                    <li>
                        <a href="Adopt.jsp">
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
<main class="content pets-container pets-main">
    <a class="pets-back" href="<%= petBase %>/pets.jsp">
        <span aria-hidden="true">&larr;</span> Back to our pets
    </a>

    <% if (selectedPet == null) { %>

        <h1 class="pets-title">Pet not found</h1>
        <p class="pets-intro">
            We could not find that pet. Please return to our pet listing.
        </p>

    <% } else { %>

        <h1 class="pets-title"><%= selectedPet[1] %></h1>

        <div class="pets-detail-layout">
            <img class="pets-detail-image"
                 src="<%= petBase %>/images/pets/<%= selectedPet[9] %>"
                 alt="<%= selectedPet[1] %>, <%= selectedPet[3] %>"
                 width="800"
                 height="800">

            <div>
                <div class="pets-facts">
                    <dl class="pets-fact">
                        <dt>Species</dt>
                        <dd><%= selectedPet[2] %></dd>
                    </dl>

                    <dl class="pets-fact">
                        <dt>Breed</dt>
                        <dd><%= selectedPet[3] %></dd>
                    </dl>

                    <dl class="pets-fact">
                        <dt>Age</dt>
                        <dd><%= selectedPet[4] %> old</dd>
                    </dl>

                    <dl class="pets-fact">
                        <dt>Gender</dt>
                        <dd><%= selectedPet[5] %></dd>
                    </dl>

                    <dl class="pets-fact">
                        <dt>Vaccinated</dt>
                        <dd><%= selectedPet[6] %></dd>
                    </dl>

                    <dl class="pets-fact">
                        <dt>Neutered / Spayed</dt>
                        <dd><%= selectedPet[7] %></dd>
                    </dl>

                    <dl class="pets-fact">
                        <dt>Adoption fee</dt>
                        <dd>RM <%= selectedPet[8] %></dd>
                    </dl>
                </div>

                <a class="pets-adopt-button"
                   href="<%= petBase %>/Adopt.jsp?petId=<%= selectedPet[0] %>">
                    Adopt Me
                </a>
            </div>
        </div>

        <section class="pets-section">
            <h2 class="pets-section-title">
                About <%= selectedPet[1] %>
            </h2>
            <p><%= selectedPet[11] %></p>
        </section>

        <section class="pets-section">
            <h2 class="pets-section-title">
                What <%= selectedPet[1] %> needs
            </h2>

            <ul class="pets-care-list">
                <%
                String[] careNeeds = selectedPet[12].split("\\|");
                for (String care : careNeeds) {
                %>
                    <li><%= care %></li>
                <%
                }
                %>
            </ul>
        </section>

    <% } %>
</main>
<footer id="contact" class="centre-foot">&copy; Team SWE306, 2026. All rights reserved. &nbsp; <a href="tel:+60123456789">Contact: +60 12 345 6789</a></footer>
</div></div>
<script src="js/script.js"></script>
</body></html>