package com.ishara;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DashboardServlet
 */
@WebServlet("/DashboardServlet")
public class DashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userRole = (String) request.getSession().getAttribute("userRole");

        if (userRole != null) {
            switch (userRole) {
                case "jobseeker":
                    response.sendRedirect("jobseekerdashboard.jsp");
                    break;
                case "receptionist":
                    response.sendRedirect("receptionist.jsp");
                    break;
                case "manager":
                    response.sendRedirect("manager.jsp");
                    break;
                default:
                    // Handle unsupported roles
                    response.sendRedirect("error.jsp");
            }
        } else {
            // User not authenticated, redirect to the login page
            response.sendRedirect("login.jsp");
        }
    
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	}


