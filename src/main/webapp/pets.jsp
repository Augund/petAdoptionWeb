<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pet-data.jspf" %>
<%
String species = request.getParameter("species");

if (!"Dog".equals(species) && !"Cat".equals(species)) {
    species = "All";
}

int petCount = 0;

for (String[] pet : pets) {
    if ("All".equals(species) || species.equals(pet[2])) {
        petCount++;
    }
}
%>
<!DOCTYPE html>
<html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Our Pets | Pawfect</title>
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
    <h1 class="pets-title">Pets looking for a home</h1>

    <p class="pets-intro">
        Meet our cats and dogs available for adoption.
    </p>

    <div class="pets-filter-bar">
        <nav class="pets-filters">
    <a class="pets-filter <%= "All".equals(species) ? "pets-selected" : "" %>"
       href="<%= petBase %>/pets.jsp">
        All pets
    </a>

    <a class="pets-filter <%= "Dog".equals(species) ? "pets-selected" : "" %>"
       href="<%= petBase %>/pets.jsp?species=Dog">
        Dogs
    </a>

    <a class="pets-filter <%= "Cat".equals(species) ? "pets-selected" : "" %>"
       href="<%= petBase %>/pets.jsp?species=Cat">
        Cats
    </a>
</nav>

        <span class="pets-count"><%= petCount %> pets</span>
    </div>

    <div class="pets-grid">
        <%
        for (String[] pet : pets) {
            if (!"All".equals(species) && !species.equals(pet[2])) {
                continue;
            }
        %>

        <article class="pets-card">
            <a class="pets-photo-link"
               href="<%= petBase %>/pet-details.jsp?id=<%= pet[0] %>"
               aria-label="View details about <%= pet[1] %>">
                <img class="pets-card-image"
                     src="<%= petBase %>/images/pets/<%= pet[9] %>"
                     alt="<%= pet[1] %>, <%= pet[3] %>"
                     width="640"
                     height="480">
            </a>

            <h2 class="pets-card-title">
                <a href="<%= petBase %>/pet-details.jsp?id=<%= pet[0] %>">
                    <%= pet[1] %>
                </a>
            </h2>

            <p class="pets-meta">
                <%= pet[2] %> &middot; <%= pet[3] %>
            </p>

            <p class="pets-meta">
                <%= pet[4] %> old &middot; <%= pet[5] %>
            </p>

            <p class="pets-description"><%= pet[10] %></p>

            <a class="pets-details-link"
               href="<%= petBase %>/pet-details.jsp?id=<%= pet[0] %>"
               aria-label="View details about <%= pet[1] %>">
                View details <span aria-hidden="true">&rarr;</span>
            </a>
        </article>

        <%
        }
        %>
    </div>
</main>
<footer id="contact" class="centre-foot">&copy; Team SWE306, 2026. All rights reserved. &nbsp; <a href="tel:+60123456789">Contact: +60 12 345 6789</a></footer>
</div></div>
<script src="js/script.js"></script>
</body></html>