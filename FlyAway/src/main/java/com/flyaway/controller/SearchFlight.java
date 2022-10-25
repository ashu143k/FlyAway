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


@WebServlet("/SearchFlight")
public class SearchFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String sourceCity = request.getParameter("SourceName");
		String destinationCity = request.getParameter("DestinationName");
		String date = request.getParameter("SelectDate");
		String noOfTravellers = request.getParameter("travellers");

		HttpSession session = request.getSession();
		session.setAttribute("sourceCity", sourceCity);
		session.setAttribute("destinationCity", destinationCity);
		session.setAttribute("date", date);
		session.setAttribute("travellers", noOfTravellers);
		
		FlyAwayDataBaseDao dao= new FlyAwayDataBaseDao();
		List<FlightDetails> flights = dao.searchFlights(sourceCity, destinationCity,date);
		session.setAttribute("Flights", flights);
		response.sendRedirect("SearchResult.jsp");
	}

}
