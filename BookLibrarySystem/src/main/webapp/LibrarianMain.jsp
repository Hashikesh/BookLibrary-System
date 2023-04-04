<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.lib.dao.LibrarianDAOImp"%>
<%@page import="com.lib.dao.LibrarianDAO"%>  
    <%
if(session.getAttribute("aid")==null)
{
	%>
  <h1>Failed</h1>
  <%
  return ;
}
    
  %>
  <% 
int id =(Integer)session.getAttribute("aid");
  LibrarianDAO find = new LibrarianDAOImp();
String name = find.findById(id);
%>
<!DOCTYPE html>
<html>
<head>
	<title>Add Student </title>
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.2.min.js" integrity="sha256-2krYZKh//PcchRtd+H+VyyQoZ/e3EcrkxhM8ycwASPA=" crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
  <link rel="stylesheet" href="style/style3.css">
<style>
		input[type=email], select {
			width: 150%;
			padding: 12px;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			margin-top: 6px;
			margin-bottom: 16px;
			resize: vertical;
		}
		input[type=password], select {
			width: 150%;
			padding: 12px;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			margin-top: 6px;
			margin-bottom: 16px;
			resize: vertical;
		}
		input[type=number], select {
			width: 150%;
			padding: 12px;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			margin-top: 6px;
			margin-bottom: 16px;
			resize: vertical;
		}
		form {
		    
			max-width: 500px;
			margin: 100px auto auto auto;
			padding: 20px;
			border: 1px solid #ccc;
			border-radius: 5px;
			background-color: #f2f2f2;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		}
		input[type=text], select {
			width: 150%;
			padding: 12px;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			margin-top: 6px;
			margin-bottom: 16px;
			resize: vertical;
		}

		input[type=submit] {
			
			background-color: #4CAF50;
			color: white;
			padding: 12px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}

		input[type=submit]:hover {
			background-color: #45a049;
		}
		a[type=submit]{
			
			background-color: #4CAF50;
			color: white;
			padding: 12px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			text-decoration: none;
		}
		a[type=submit]:hover{
			background-color: #45a049;
		}
		nav a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}
	</style>
	<script>
            function validateForm(form){
            //var name = document.getElementById("name").value
            var lid = $("#lid").val()
            var name = $("#name").val()
            var lage=$("#lage").val()
            var username = $("#username").val()
            if(lid > 50){
               $("#lid-err").html("id should be less than 50")
                return false
            }else if(name.length < 3){
               $("#name-err").html("Name Must Have 3 Character")
                return false
            }else if(lage>60){
            	$("#lage-err").html("age should be less than 60")
                return false
            }else if(username.length < 3){
               $("#username-err").html("uname Must Have 3 Character")
                return false
            }
            else{
            	$("#lid-err").html("")
                $("#name-err").html("")
                $("#lage-err").html("")
                $("#username-err").html("")
                return form
            }
        }
       </script>
</head>
<body>
	<nav class="navbar navbar-expand-lg">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#my">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-center"
					id="my">
					<div class="nav-item lh-1">
						<h3><%="Welcome"+" <i>"+name+"</i> !" %></h3>
					</div>
					<div
						class="navbar-nav col-9 justify-content-end align-items-center">						
						<div class="nav-item">
							<a href="logout.jsp"><i class="bi bi-box-arrow-right"></i> Logout</a>
						</div>
					</div>
				</div>
			</div>
</nav>
	<form action="AddLibrarian" onSubmit="return validateForm(this)"> 
	<table align="center">
<tr>
<th colspan="2"><h3>Add Student</h3></th>
</tr>
		<%
		String str1= (String)session.getAttribute("libstatus");
		String str2= (String)session.getAttribute("vlibstatus");
		System.out.println(str1);
		System.out.println(str2);
		if(str1=="success" && str2 == "success")
		{
			%>
			<h3 style="color:green"> Record Inserted Successfully !! </h3>
			
			<% 
			session.setAttribute("libstatus", null);
			session.setAttribute("vlibstatus", null);
		}
		if(str1=="failure" || str2 == "failure")
		{
			%>
			<h3 style="color:red">Some Error Occur !</h3>
			<% 
		}
		%>
		<tr>
		<td>Student ID</td>
		<td>
		<input type="number" id="lid" name="lid" placeholder="Enter Student id">
		<br>
		<span class="text-danger fst-italic" id="lid-err"></span>
		</td>
		<tr>
		<td>Student Name</td>
		<td>
		<input type="text" id="name" name="name" placeholder="Enter Student name">
		<br>
		<span class="text-danger fst-italic" id="name-err"></span>
		</td>
        <tr>
		<td>Student Email</td>
		<td>
		<input type="email" id="email" name="email" placeholder="Enter Student email">
		</td>
		<tr>
		<td>Student Age</td>
		<td>
		<input type="number" id="lage" name="lage" placeholder="Enter Student Age">
		<br>
		<span class="text-danger fst-italic" id="lage-err"></span>
		</td>
    	<tr>
		<td>Username</td>
		<td>
		<input type="text" id="username" name="username" placeholder="Enter Student username">
		<br>
		<span class="text-danger fst-italic" id="username-err"></span>
		</td>
     	<tr>
		<td>Password</td>
		<td>
		<input type="text" id="password" name="password" placeholder="Enter Student password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
    	</td>
    	</tr>
    	<tr>
		<td class="text-center"><input type="submit" value="Add Student"></td>
		</tr>
		</table>
	</form>
	<br>
	<footer class="site-footer pb-3">
		<div class="container">
			<p>&copy; 2023 Book Management. All rights reserved. | Design By
				Tech Chasers</p>
				</div>
	</footer>
</body>
</html>
