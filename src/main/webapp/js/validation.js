function validateForm() {
    let isValid = true;

    let fullName = document.getElementById("fullName").value.trim();
    let email = document.getElementById("email").value.trim();
    let phone = document.getElementById("phone").value.trim();
    let pet = document.getElementById("petOfInterest").value;
    let housing = document.querySelector('input[name="housingType"]:checked');
    let reason = document.getElementById("reason").value.trim();
    let agreement = document.getElementById("agreement").checked;
   
    document.getElementById("nameError").innerText = "";
    document.getElementById("emailError").innerText = "";
    document.getElementById("phoneError").innerText = "";
    document.getElementById("petError").innerText = "";
    document.getElementById("housingError").innerText = "";
    document.getElementById("reasonError").innerText = "";
    document.getElementById("agreementError").innerText = "";

    if (fullName === "") {
        document.getElementById("nameError").innerText = "Full name is required.";
        isValid = false;
    }

    let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (email === "") {
        document.getElementById("emailError").innerText = "Email is required.";
        isValid = false;
    } else if (!emailRegex.test(email)) {
        document.getElementById("emailError").innerText = "Please enter a valid email address.";
        isValid = false;
    }

    let phoneRegex = /^\d{10,11}$/;
    if (phone === "") {
        document.getElementById("phoneError").innerText = "Phone number is required.";
        isValid = false;
    } else if (!phoneRegex.test(phone)) {
        document.getElementById("phoneError").innerText = "Please emter the right phone number.";
        isValid = false;
    }

    if (pet === "") {
        document.getElementById("petError").innerText = "Please select a pet of interest.";
        isValid = false;
    }

    if (!housing) {
        document.getElementById("housingError").innerText = "Please select your housing type.";
        isValid = false;
    }

    if (reason === "") {
        document.getElementById("reasonError").innerText = "Please provide a reason for adoption.";
        isValid = false;
    }

    if (!agreement) {
        document.getElementById("agreementError").innerText = "You must agree to the home visit condition.";
        isValid = false;
    }

    return isValid;
}