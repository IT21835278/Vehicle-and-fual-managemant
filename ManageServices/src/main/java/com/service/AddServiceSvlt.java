package com.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddServiceSvlt
 */
@WebServlet("/AddServiceSvlt")
public class AddServiceSvlt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String SName=request.getParameter("S_name");
		String SChrg=request.getParameter("S_chrg");
		String SDes=request.getParameter("S_des");
		
		boolean isTrue;
		
		
		isTrue=ServiceDBUtil.InsertService(SName, SChrg, SDes);
		
		if(isTrue==true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("Success.jsp");
			dis1.forward(request, response);
		}
		
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
