package com.example;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.annotation.WebServlet;




@WebServlet("/AdoptionServlet")
public class homeServlet extends HttpServlet
{	
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		    throws IOException, ServletException
		    {
		        req.getRequestDispatcher("/index.jsp").forward(req, res);
		    }
	
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
	  //<--------------------------------------------------------------------->
		request.setCharacterEncoding("UTF-8");

	    String fullName = request.getParameter("fullName");
	    String email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	    String petOfInterest = request.getParameter("petOfInterest");
	    String housingType = request.getParameter("housingType");
	    String reason = request.getParameter("reason");
	    String agreement = request.getParameter("agreement");

	    request.setAttribute("fullName", fullName);
	    request.setAttribute("email", email);
	    request.setAttribute("phone", phone);
	    request.setAttribute("petOfInterest", petOfInterest);
	    request.setAttribute("housingType", housingType);
	    request.setAttribute("reason", reason);
	    request.setAttribute("agreement", agreement);

	    request.getRequestDispatcher("Confirmation.jsp").forward(request, response);

	}
	
	    
}



//	    public void doPost(HttpServletRequest req, HttpServletResponse res)
//	    throws IOException, ServletException
//	    {
//	        doGet(req, res);
//	    }
