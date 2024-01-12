package com.financial;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/updatefinancialServlet")
public class updatefinancialServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = financialDBUtil.updatefinancial(id, name, email, phone, username, password);
		
		if(isTrue == true) {
			
			List<financial> finDetails = financialDBUtil.getfinancialDetails(id);
			request.setAttribute("finDetails", finDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
			else {
				List<financial> finDetails = financialDBUtil.getfinancialDetails(id);
				request.setAttribute("finDetails", finDetails);
				
				
				RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
				dis.forward(request, response);
				
				
			}
		}
	}


