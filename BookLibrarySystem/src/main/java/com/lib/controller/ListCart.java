package com.lib.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lib.dto.BookQuntity;


@WebServlet("/ListCart")
public class ListCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		 if(session==null) {
			 out.println("<html><body>To view this site you must login<br>");
			 out.println("<a href='login.jsp'>Login</a></body></html>");
			 return;
		 }else
		 out.println("<html");
		 out.println("<body>");
		 out.println("welcome<b>"+session.getAttribute("userName")+"</b></br>");
		 ArrayList<BookQuntity>objcart=(ArrayList<BookQuntity>)session.getAttribute("Cart");
		 if(objcart==null || objcart.size()<=0)
			 out.println("No Product in Your Card");
		 else {
		 out.println("<table border='1'>");
		 out.println("<tr>");
		 out.println("<th>Bood id</th>");
		 out.println("<th>Book Name</th>");
		 out.println("<th>Subject</th>");
		 out.println("</tr>");
		 Iterator<BookQuntity>iteam=objcart.iterator();
		 while(iteam.hasNext()) {
			 
			 BookQuntity objProduct=iteam.next();
			 out.println("<tr>");
			 out.println("<th>"+objProduct.getBid()+"</th>");
			 out.println("<th>"+objProduct.getBname()+"</th>");
			 out.println("<th>"+objProduct.getSubject()+"</th>");
			 out.println("</tr>");
		 }
		 out.println("</table>");
	}
		 out.println("<a href='libMain.jsp'>Continue Shopping </a><br/>");
		 out.println("<a href='logout.jsp'>Logout</a>");
		 out.println("</body></html>");
}
}
