package com.flyaway.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
	import jakarta.servlet.annotation.WebServlet;
	import jakarta.servlet.http.HttpServlet;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
	import jakarta.servlet.http.HttpSession;

import com.flyaway.bean.AirLineDetails;
import com.flyaway.bean.CitiesDetails;
import com.flyaway.bean.FlightDetails;
import com.flyaway.dao.FlyAwayDataBaseDao;

/**
 * Servlet implementation class AdminLoginValidation
 */
@WebServlet("/AdminLoginValidation")
public class AdminLoginValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.setMaxInactiveInterval(1000);
		String username = request.getParameter("UserName");
		String password = request.getParameter("Password");
		
		FlyAwayDataBaseDao dao= new FlyAwayDataBaseDao();
		boolean ifSuccess = dao.ValidateUser(username,password);
		if(ifSuccess == true) {
			session.setAttribute("UName",username);
			List<FlightDetails> flights = dao.getAllFlights();
			List<CitiesDetails> cities=dao.getAllCities();
			List<AirLineDetails> airLines=dao.getAllAirlines();
			session.setAttribute("AirLines", airLines);
			session.setAttribute("Cities", cities);
			session.setAttribute("Flights", flights);
			response.sendRedirect("adminPage.jsp");
		}else {
			RequestDispatcher rd= request.getRequestDispatcher("AdminLogin.jsp");
			PrintWriter out= response.getWriter();
			rd.include(request, response);
			out.print("<div class='loginFailed' ><span style= 'color:red'>Either Email or Password is incorrect.</span></div>");
			
			
		}
		
	}

}
