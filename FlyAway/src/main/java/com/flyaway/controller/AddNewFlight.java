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

@WebServlet("/addNewFlight")
public class AddNewFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sourceCity = request.getParameter("SourceName");
		String destinationCity = request.getParameter("DestinationName");
		String airLine = request.getParameter("AirlineName");
		String departTime = request.getParameter("departTime");
		String arrivalTime = request.getParameter("arrivalTime");
		String date = request.getParameter("SelectedDate");
		String flightPrice = request.getParameter("flightPrice");
		String flightNumber = request.getParameter("flightNumber");
		HttpSession session = request.getSession();
		
		FlightDetails addFlight=new FlightDetails(flightNumber,airLine,sourceCity,destinationCity,date,flightPrice,departTime,arrivalTime);
		FlyAwayDataBaseDao dao= new FlyAwayDataBaseDao();
		Integer flightsId = dao.addNewFlight(addFlight);
		List<FlightDetails> flights = dao.getAllFlights();
		session.setAttribute("Flights", flights);
		response.sendRedirect("adminPage.jsp");
		
	}

}
