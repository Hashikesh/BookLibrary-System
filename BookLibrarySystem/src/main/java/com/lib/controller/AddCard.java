package com.lib.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lib.dto.BookQuntity;

/**
 * Servlet implementation class AddCard
 */
@WebServlet("/AddCard")
public class AddCard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		 if(session==null) {
			 PrintWriter out=response.getWriter();
			 out.println("<html><body>To view this site you must login<br>");
			 out.println("<a href='login.jsp'>Login</a></body></html>");
			 return;
		 }
		 int bid = Integer.parseInt(request.getParameter("bid"));
		 String bsubject=request.getParameter("bsubject");
		 String bname=request.getParameter("bname");
		 
		 BookQuntity objproduct =  new BookQuntity(bid,bname,bsubject);
		 ArrayList<BookQuntity>objcart=(ArrayList<BookQuntity>)session.getAttribute("Cart");
		 if(objcart==null) {
			 objcart=new ArrayList<>();
			 session.setAttribute("Cart", objcart);
		 }
			objcart.add(objproduct);
			response.sendRedirect("ListCart");
	}

}
