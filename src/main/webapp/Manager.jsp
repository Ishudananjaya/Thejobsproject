<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Dashboard</title>
</head>
<body>
    <h1>Welcome, Manager!</h1>
    
    <h2>Registered Job Seekers Count:</h2>
    <% 
        Manager manager = new Manager("managerUsername", "managerPassword"); 
        int jobSeekerCount = manager.getJobSeekerCount();
    %>
    <p>Total Registered Job Seekers: <%= jobSeekerCount %></p>
    
    <h2>View Registered Job Seekers within Date Range:</h2>
    <form action="manager.jsp" method="post">
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate" required>
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" required>
        <button type="submit">View Job Seekers</button>
    </form>
    
    <%
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");

        if (startDate != null && endDate != null) {
            List<JobSeeker> jobSeekersInRange = manager.getJobSeekersWithinDateRange(startDate, endDate);
    %>
            <h3>Job Seekers Registered Between <%= startDate %> and <%= endDate %>:</h3>
            <ul>
                <% for (JobSeeker jobSeeker : jobSeekersInRange) { %>
                    <li><%= jobSeeker.getUsername() %></li>
                <% } %>
            </ul>
    <%
        }
    %>
</body>
</html>
