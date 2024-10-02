package com.contactUs;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateContactServelet
 */
@WebServlet("/updateContactServelet")
public class updateContactServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String id = request.getParameter("id");
		String username = request.getParameter("UserName");
		String email = request.getParameter("Email");
		String phone = request.getParameter("PhoneNumber");
		String msg = request.getParameter("Msg");
		int ID = Integer.parseInt(id);
		
		boolean isTrue;
		
		isTrue = contactDBUtil.updatecontact(ID, username, email, phone, msg);
		
		if(isTrue == true) {
			
			List<Contact> contactDetails = contactDBUtil.getContactDetails(username);
			System.out.println("Contact Details: " + contactDetails);
			request.setAttribute("contactDetails", contactDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("MyContact.jsp");
			dis.forward(request, response);
		}
		else {
			List<Contact> contactDetails = contactDBUtil.getContactDetails(username);
			System.out.println("Contact Details: " + contactDetails);
			request.setAttribute("contactDetails", contactDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("MyContact.jsp");
			dis.forward(request, response);
		}
	}

}
