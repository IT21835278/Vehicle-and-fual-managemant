package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServiceSrvlt
 */
@WebServlet("/DeleteServiceSrvlt")
public class DeleteServiceSrvlt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("SId");
		boolean isTrue;
		isTrue=ServiceDBUtil.deleteService(id);
		
		if(isTrue==true) {
			RequestDispatcher dispatcher= request.getRequestDispatcher("Success.jsp");
			dispatcher.forward(request, response);
		}
		
		else {
				List<Services> SerDetails= ServiceDBUtil.getServiceDetails(id);
				request.setAttribute("SerDetails", SerDetails);
				
				RequestDispatcher dispatcher= request.getRequestDispatcher("Unsuccess.jsp");
				dispatcher.forward(request, response);
		}
	}

}
