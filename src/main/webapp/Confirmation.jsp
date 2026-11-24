<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application Confirmation</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Pawfect Pet Adoption Centre</h1>
    </header>

    <main>
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

    <footer>
        <p>&copy; Team XYZ, 2026. All Rights Reserved.</p>
    </footer>
</body>
</html>