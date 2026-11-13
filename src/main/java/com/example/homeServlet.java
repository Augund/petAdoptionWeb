package com.example;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.annotation.WebServlet;




@WebServlet("/login")
public class homeServlet extends HttpServlet
{	
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		    throws IOException, ServletException
		    {
		        req.getRequestDispatcher("/index.jsp").forward(req, res);
		    }
	
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
		String name=request.getParameter("name");
	    String pet=request.getParameter("pet");
	    
	    PrintWriter out= response.getWriter();
	    if("admin".equals(name)&&"1111".equals(pet)) {
	    	request.getRequestDispatcher("/confirm.jsp").forward(request, response);
	    	
	    }else {
	    	out.println("<h2>Faild</h2>");
	    	out.println("<a href='testForm.html'>back</a>");
	    }
	}
    
}



//	    public void doPost(HttpServletRequest req, HttpServletResponse res)
//	    throws IOException, ServletException
//	    {
//	        doGet(req, res);
//	    }
