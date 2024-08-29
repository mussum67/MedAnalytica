function handleRegisterAsChange(event) {
    const registerAs = event.target.value;
    if (registerAs === "patient") {
        window.location.href = "Register_as_patients.html"; // Redirect to patient registration page
    } else if (registerAs === "doctor") {
        window.location.href = "Register-doctor.html"; // Redirect to doctor registration page
    }
}

document.addEventListener("DOMContentLoaded", () => {
    const registerAsSelect = document.getElementById("registerAs");
    registerAsSelect.addEventListener("change", handleRegisterAsChange);
});