package com.flyaway.controller;

import java.io.IOException;
import java.util.List;

import com.flyaway.bean.AirLineDetails;
import com.flyaway.dao.FlyAwayDataBaseDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AddNewAirLine")
public class AddNewAirLine extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String airLineName= request.getParameter("AirLineName");
		AirLineDetails addNewAirLine = new AirLineDetails(airLineName);
		FlyAwayDataBaseDao dao= new FlyAwayDataBaseDao();
		Integer flightsId = dao.addAirLine(addNewAirLine);
		HttpSession session=request.getSession();
		List<AirLineDetails> airLines=dao.getAllAirlines();
		session.setAttribute("AirLines", airLines);
		response.sendRedirect("adminPage.jsp");
	}

}
