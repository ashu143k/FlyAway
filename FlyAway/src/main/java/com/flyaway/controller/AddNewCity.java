package com.flyaway.controller;

import java.io.IOException;
import java.util.List;

import com.flyaway.bean.AirLineDetails;
import com.flyaway.bean.CitiesDetails;
import com.flyaway.dao.FlyAwayDataBaseDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AddNewCity")
public class AddNewCity extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cityName= request.getParameter("CityName");
		String cityIATA= request.getParameter("CityIATA");
		String cityNameIATA= cityName.concat(" ("+cityIATA+")");
		CitiesDetails newCity= new CitiesDetails(cityNameIATA);
		FlyAwayDataBaseDao dao= new FlyAwayDataBaseDao();
		Integer CityId = dao.addCity(newCity);
		HttpSession session=request.getSession();
		List<CitiesDetails> cities=dao.getAllCities();
		session.setAttribute("Cities", cities);
		response.sendRedirect("adminPage.jsp");
	}

}
