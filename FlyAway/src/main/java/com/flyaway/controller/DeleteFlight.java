package com.flyaway.controller;

import java.io.IOException;
import java.util.List;

import com.flyaway.bean.FlightDetails;
import com.flyaway.dao.FlyAwayDataBaseDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteFlight
 */
@WebServlet(name = "DeleteFlight", urlPatterns = { "/DeleteFlight" })
public class DeleteFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer flightId = Integer.parseInt(request.getParameter("FlightId"));
		HttpSession session = request.getSession();
		FlyAwayDataBaseDao dao = new FlyAwayDataBaseDao();
		Integer flightsId = dao.deleteFlight(flightId);
		if(flightsId==1) {
		List<FlightDetails> flights = dao.getAllFlights();
		session.setAttribute("Flights", flights);
		response.sendRedirect("adminPage.jsp");
		}	
	}

}
