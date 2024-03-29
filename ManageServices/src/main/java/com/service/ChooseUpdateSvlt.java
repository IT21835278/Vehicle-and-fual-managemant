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
 * Servlet implementation class ChooseUpdateSvlt
 */
@WebServlet("/ChooseUpdateSvlt")
public class ChooseUpdateSvlt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ServID =request.getParameter("sid");
		
		try {
		List<Services> SerDetails=ServiceDBUtil.validate(ServID);
		request.setAttribute("SerDetails", SerDetails);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis=request.getRequestDispatcher("selectUpdate.jsp");
		dis.forward(request, response);

	}
}
