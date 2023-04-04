package com.lib.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lib.dao.StudentDAO;
import com.lib.dao.StudentDAOImp;
@WebServlet("/ConfirmPassword")
public class ConfirmPassword extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String newPassword = request.getParameter("newPassword");
		String new2Password = request.getParameter("new2Password");
		System.out.println(newPassword);
		System.out.println(new2Password);
		if(newPassword.equals(new2Password)){
			StudentDAO lib = new StudentDAOImp();
			String status = lib.updatePassword(username, newPassword);
			HttpSession session = request.getSession();
			session.setAttribute("passwordstatus", status);
		    response.sendRedirect("confirmPassword.jsp");
		}
		else {
			String status = "failure";
			HttpSession session = request.getSession();
		    session.setAttribute("passwordstatus", status);
	        response.sendRedirect("confirmPassword.jsp");
	
		}
}
    
}
