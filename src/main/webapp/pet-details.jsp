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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><%= pageTitle %> | Paw Haven</title>
    <link rel="stylesheet" href="<%= petBase %>/css/pets.css">
</head>
<body class="pets-page">

<header class="pets-header">
    <div class="pets-container pets-header-inner">


        <nav class="pets-nav" aria-label="Main navigation">
            <a href="<%= petBase %>/index.jsp">Home</a>
            <a class="pets-active" href="<%= petBase %>/pets.jsp">
                Our Pets
            </a>
            <a href="<%= petBase %>/adopt.jsp">Adopt</a>
            <a href="<%= petBase %>/contact.jsp">Contact</a>
        </nav>
    </div>
</header>

<main class="pets-container pets-main">
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
                <dl class="pets-facts">
                    <div class="pets-fact">
                        <dt>Species</dt>
                        <dd><%= selectedPet[2] %></dd>
                    </div>

                    <div class="pets-fact">
                        <dt>Breed</dt>
                        <dd><%= selectedPet[3] %></dd>
                    </div>

                    <div class="pets-fact">
                        <dt>Age</dt>
                        <dd><%= selectedPet[4] %> old</dd>
                    </div>

                    <div class="pets-fact">
                        <dt>Gender</dt>
                        <dd><%= selectedPet[5] %></dd>
                    </div>

                    <div class="pets-fact">
                        <dt>Vaccinated</dt>
                        <dd><%= selectedPet[6] %></dd>
                    </div>

                    <div class="pets-fact">
                        <dt>Neutered / Spayed</dt>
                        <dd><%= selectedPet[7] %></dd>
                    </div>

                    <div class="pets-fact">
                        <dt>Adoption fee</dt>
                        <dd>RM <%= selectedPet[8] %></dd>
                    </div>
                </dl>

                <a class="pets-adopt-button"
                   href="<%= petBase %>/adopt.jsp?petId=<%= selectedPet[0] %>">
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

<footer class="pets-footer">
    <div class="pets-container pets-footer-inner">
        <p>&copy; Paw Haven 2026. All rights reserved.</p>
        <p>Contact: hello@pawhaven.example</p>
    </div>
</footer>

</body>
</html>