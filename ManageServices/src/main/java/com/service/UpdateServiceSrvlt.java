package com.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateServiceSrvlt
 */
@WebServlet("/UpdateServiceSrvlt")
public class UpdateServiceSrvlt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("SId");
		String name=request.getParameter("SName");
		String charge=request.getParameter("SChrg");
		String DES=request.getParameter("SDis");
		
		boolean isTrue;
		isTrue= ServiceDBUtil.updateServ(id, name, charge, DES);
		
		if(isTrue==true) {
			RequestDispatcher dis =request.getRequestDispatcher("Success.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis =request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
