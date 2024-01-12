package com.financial;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/salaryServlet")
public class salaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("salid");
		String name = request.getParameter("name");
		String eid = request.getParameter("eid");
		String email =request.getParameter("email");
		String phone =request.getParameter("phone");
		String ot =request.getParameter("ot");
		String bonus =request.getParameter("bonus");
		String salary =request.getParameter("salary");
		
		
boolean isTrue;
		
		isTrue = financialDBUtil.insertfinancial(name, eid, email, phone, ot, bonus, salary);
		
		if(isTrue == true) {
			
			List<salary> salDetails = financialDBUtil.getsalaryDetails(id);
		    request.setAttribute("salDetails", salDetails);
			  RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			  dis.forward(request,response);
		}
		else {
			  RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			  dis2.forward(request,response);
			
		
	}
	}
}
