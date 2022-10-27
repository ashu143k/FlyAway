package com.flyaway.controller;

import java.io.IOException;
import java.util.List;

import com.flyaway.bean.AirLineDetails;
import com.flyaway.bean.CitiesDetails;
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
@WebServlet(name = "DeleteService", urlPatterns = { "/DeleteService" })
public class DeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		if (request.getParameter("FlightId") != null) {
			Integer flightId = Integer.parseInt(request.getParameter("FlightId"));
			FlyAwayDataBaseDao dao = new FlyAwayDataBaseDao();
			Integer flightsId = dao.deleteFlight(flightId);
			if (flightsId == 1) {
				List<FlightDetails> flights = dao.getAllFlights();
				session.setAttribute("Flights", flights);
				response.sendRedirect("adminPage.jsp");
			}
		} else if (request.getParameter("airLineId") != null) {
			Integer airLineId = Integer.parseInt(request.getParameter("airLineId"));
			FlyAwayDataBaseDao dao = new FlyAwayDataBaseDao();
			Integer airLinesId = dao.deleteAirLine(airLineId);
			if (airLinesId == 1) {
				List<AirLineDetails> airLines = dao.getAllAirlines();
				session.setAttribute("AirLines", airLines);
				response.sendRedirect("adminPage.jsp");
			}
		}else if (request.getParameter("cityId")!=null) {
			Integer cityId= Integer.parseInt(request.getParameter("cityId"));
			FlyAwayDataBaseDao dao = new FlyAwayDataBaseDao();
			Integer deleteCity = dao.deleteCity(cityId);
			if (deleteCity == 1) {
				List<CitiesDetails> cities=dao.getAllCities();
				session.setAttribute("Cities", cities);
				response.sendRedirect("adminPage.jsp");
			}
		}
	}

}
