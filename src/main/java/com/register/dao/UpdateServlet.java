package com.register.dao;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			RequestDispatcher rd=null;
	        String name = request.getParameter("name");
	        String password = request.getParameter("pass");
	        String city = request.getParameter("city");
	        RegisterQuery q = new RegisterQuery();
	        int count = q.update(name, password, city);
	        
	        if (count > 0) {
	            rd=request.getRequestDispatcher("View.jsp");
	            rd.forward(request, response);
	        } else {
	            response.sendRedirect("Error.html");
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        e.printStackTrace(); // Log the exception or handle it appropriately
	        response.sendRedirect("Error.html");
	    }
	}

}