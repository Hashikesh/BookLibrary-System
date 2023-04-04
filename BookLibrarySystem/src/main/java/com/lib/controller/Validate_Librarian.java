package com.lib.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lib.dao.LibrarianDAO;
import com.lib.dao.LibrarianDAOImp;
import com.lib.dto.Validate_LibrarianLogin;


 
@WebServlet("/Validate_Librarian")
public class Validate_Librarian extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LibrarianDAO admindao =null;
        
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	  Validate_LibrarianLogin Val = new Validate_LibrarianLogin();
	  Val.setApassword(password);
	  Val.setAusername(username);
	  admindao = new LibrarianDAOImp();
	   int aid = admindao.LibrarianValidate(Val);
	   HttpSession session = request.getSession();     
       session.setAttribute("aid", aid);
	   System.out.print(aid);
		if(aid==-1)
		{
			 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		       rd.forward(request, response);
		} 
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("LibrarianMain.jsp");
		       rd.forward(request, response);
		}
		
	}

	
	

}
