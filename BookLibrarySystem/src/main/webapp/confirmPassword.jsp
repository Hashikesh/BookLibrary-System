<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f1f1f1;
		}
		h1 {
			color: #4CAF50;
			text-align: center;
			margin-top: 50px;
		}
		a{
			background-color: #4CAF50;
			color: white;
			padding: 12px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			text-decoration: none;
		}
		a:hover{
			background-color: #45a049;
		}
	</style>
</head>
<body>
<% 
String str1= (String)session.getAttribute("passwordstatus");
System.out.println(str1);
if(str1=="success")
{
	%>
	<h1 style="color:green"> Password Changed Successfully !! </h1>
	<a align="center" href=login.jsp>Login</a>
	<% 
	session.setAttribute("passwordstatus", null);
}
if(str1=="failure")
{
	%>
	<h1 style="color:red">Unsuccessful !</h1>
	<a align="center" href=forgotPassword.jsp>Try Again!</a>
	<a align="center" href=login.jsp>Login</a>
	
	<% 
    }
%>				
</body>
</html>