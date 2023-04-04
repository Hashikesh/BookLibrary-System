<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.lib.dto.BookQuntity"%>
<%@page import="java.util.Iterator"%>

    <%
if(session.getAttribute("lid")==null)
{
	%>
  <h1>Failure</h1>
  <%
  return ;
}
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<% 	 if(session==null){
			 %>To view this site you must login<br>
			 <a href='login.jsp'>Login</a>
			 <%
			 return; } 
		else{%>
		</head>
		<body><% 
		 ArrayList<BookQuntity>objcart=(ArrayList<BookQuntity>)session.getAttribute("Cart");
		 if(objcart==null || objcart.size()<=0)%>
			No Product in Your Card
			<% else
		 {%>
		<table border='1'>
		<tr>
		<th>Catagory</th>
		</tr>
		<% 
		 Iterator<BookQuntity>iteam=objcart.iterator();
		 while(iteam.hasNext()) {
			 
			 BookQuntity objProduct=iteam.next();
			 %>
			 <tr>
			 <th><%=objProduct.getBid()%></th>
			 </tr>
			 <%
		 }%>
		 </table>
		 <%} 
		 }%>
		 <a href='libMain.jsp'>Continue Shopping </a><br/>
		 <a href='logout.jsp'>Logout</a>
</body>
</html>