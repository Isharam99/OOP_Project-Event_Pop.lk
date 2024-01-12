package com.financial;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/financialinsert")
public class financialinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public financialinsert() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
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
			  RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			  dis.forward(request,response);
		}
		else {
			  RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			  dis2.forward(request,response);
			
		
	}

	}
}
