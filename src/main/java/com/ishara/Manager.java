package com.ishara;

import java.util.ArrayList;
import java.util.List;

public class Manager extends User {
    public Manager(String username, String password) {
        super(username, password, "manager");
    }

    // Add methods specific to Manager, such as getting job seeker count and details from the database.
    public int getJobSeekerCount() {
        // Implement code to fetch job seeker count from the database.
        return 0; // Placeholder value
    }

    public List<JobSeeker> getJobSeekerDetails() {
        // Implement code to fetch job seeker details from the database.
        return new ArrayList<>(); // Placeholder value
    }
}
