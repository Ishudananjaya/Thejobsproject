<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Seeker Registration</title>
</head>
<body>
    <h1>Job Seeker Registration</h1>
    
    <form action="processRegistration" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="nic">NIC Number:</label>
        <input type="text" id="nic" name="nic" required><br><br>
        
        <label for="birthdate">Birthdate:</label>
        <input type="date" id="birthdate" name="birthdate" required><br><br>
        
        <label for="homeAddress">Home Address:</label>
        <textarea id="homeAddress" name="homeAddress" rows="4" required></textarea><br><br>
        
        <label for="education">Education:</label>
        <input type="text" id="education" name="education" required><br><br>
        
        <label for="preferredCountry">Preferred Country:</label>
        <input type="text" id="preferredCountry" name="preferredCountry" required><br><br>
        
        <label for="contactNumber">Contact Number:</label>
        <input type="text" id="contactNumber" name="contactNumber" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <button type="submit">Submit</button>
    </form>
</body>
</html>
