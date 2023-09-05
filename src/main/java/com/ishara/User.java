package com.ishara;

public class User {
	private String username;
    private String password;
    private String role; // Manager, Receptionist, JobSeeker, etc.

    public User(String username, String password, String role) {
        this.username = username;
        this.password = password;
        this.role = role;

}
}