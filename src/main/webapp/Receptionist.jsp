<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Receptionist Dashboard</title>
</head>
<body>
    <h1>Welcome, Receptionist!</h1>
    
    <h2>Actions:</h2>
    <form action="receptionist.jsp" method="post">
        <button type="submit" name="addJobSeeker">Add Job Seeker</button>
        <button type="submit" name="editJobSeeker">Edit Job Seeker Details</button>
    </form>
    
    <%
        if (request.getParameter("addJobSeeker") != null) {
            response.sendRedirect("register.jsp");
        } else if (request.getParameter("editJobSeeker") != null) {
            response.sendRedirect("edit.jsp");
        }
    %>
</body>
</html>
