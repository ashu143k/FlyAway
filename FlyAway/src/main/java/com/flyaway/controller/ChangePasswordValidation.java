package com.flyaway.controller;

import java.io.IOException;

import com.flyaway.dao.FlyAwayDataBaseDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ChangePasswordValidation
 */
@WebServlet("/ChangePasswordValidation")
public class ChangePasswordValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		String oldPassword= request.getParameter("oldPassword");
		String newPassword = request.getParameter("newPassword");
		String username=(String)session.getAttribute("UName");
		if(username!=null) {
			FlyAwayDataBaseDao dao= new FlyAwayDataBaseDao();
			String passwordUpdate=dao.updatePassword(oldPassword,newPassword,username);
			if(passwordUpdate.equalsIgnoreCase("Password Changed")) {
				session.setAttribute("passwordChangeStatus", passwordUpdate);
				response.sendRedirect("adminPage.jsp");
			}
		}
	}

}
