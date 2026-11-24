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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Our Pets | Paw Haven</title>
    <link rel="stylesheet" href="<%= petBase %>/css/pets.css">
    <link rel="stylesheet" href="<%= petBase %>/css/sidebar.css">
</head>
<body class="pets-page with-sidebar">

<aside class="sidebar" id="sidebar">
    <nav>
        <ul class="nav-list">
            <li>
                <a href="<%= petBase %>/home.html">
                    <img class="sidebar-button"
                         src="<%= petBase %>/images/sidebar-comic/home-sidebar.png" alt="">
                    <span class="nav-label">Home</span>
                </a>
            </li>
            <li>
                <a class="active" href="<%= petBase %>/pets.jsp">
                    <img class="sidebar-button"
                         src="<%= petBase %>/images/sidebar-comic/ourPet-sidebar.png" alt="">
                    <span class="nav-label">Our Pets</span>
                </a>
            </li>
            <li>
                <a href="<%= petBase %>/Adopt.jsp">
                    <img class="sidebar-button"
                         src="<%= petBase %>/images/sidebar-comic/adopt-sidebar.png" alt="">
                    <span class="nav-label">Adopt</span>
                </a>
            </li>
            <li>
                <a href="<%= petBase %>/contact.jsp">
                    <img class="sidebar-button"
                         src="<%= petBase %>/images/sidebar-comic/contact-sidebar.png" alt="">
                    <span class="nav-label">Contact</span>
                </a>
            </li>
        </ul>
    </nav>
</aside>

<div class="page-shell">

<main class="pets-container pets-main">
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

<footer class="pets-footer">
    <div class="pets-container pets-footer-inner">
        <p>&copy; Paw Haven 2026. All rights reserved.</p>
        <p>Contact: hello@pawhaven.example</p>
    </div>
</footer>

</div>

</body>
</html>
