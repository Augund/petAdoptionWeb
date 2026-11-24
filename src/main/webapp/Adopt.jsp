<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Adoption Interest Form - Pet Adoption Centre</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/sidebar.css">

    <script src="js/validation.js" defer></script>
</head>
<body class="adopt-page with-sidebar">

<aside class="sidebar" id="sidebar">
    <nav>
        <ul class="nav-list">
            <li>
                <a href="home.html">
                    <img class="sidebar-button" src="images/sidebar-comic/home-sidebar.png" alt="">
                    <span class="nav-label">Home</span>
                </a>
            </li>
            <li>
                <a href="pets.jsp">
                    <img class="sidebar-button" src="images/sidebar-comic/ourPet-sidebar.png" alt="">
                    <span class="nav-label">Our Pets</span>
                </a>
            </li>
            <li>
                <a href="Adopt.jsp">
                    <img class="sidebar-button" src="images/sidebar-comic/adopt-sidebar.png" alt="">
                    <span class="nav-label">Adopt</span>
                </a>
            </li>
            <li>
                <a href="contact.jsp">
                    <img class="sidebar-button" src="images/sidebar-comic/contact-sidebar.png" alt="">
                    <span class="nav-label">Contact</span>
                </a>
            </li>
        </ul>
    </nav>
</aside>

<div class="page-shell">

    <header>
        <h1>Pet Adoption Centre</h1>
    </header>

    <main>
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
                <option value="Milo (Cat)">Milo (Cat)</option>
                <option value="Bella (Dog)">Bella (Dog)</option>
                <option value="Simba (Cat)">Simba (Cat)</option>
                <option value="Max (Dog)">Max (Dog)</option>
                <option value="Luna (Cat)">Luna (Cat)</option>
                <option value="Rocky (Dog)">Rocky (Dog)</option>
            </select><br>
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

    <footer>
        <p>&copy; Team swe306, 2026. All Rights Reserved. | Contact: info@pet | Phone: 60123456789</p>
    </footer>

</div>

</body>
</html>
