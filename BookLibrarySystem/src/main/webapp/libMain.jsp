<%@page import="com.lib.dao.LibrarianDAOImp"%>
<%@page import="com.lib.dao.LibrarianDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.lib.dao.BookDAOImp"%>
<%@page import="com.lib.dao.BookDAO"%>
<%
if(session.getAttribute("lid")==null)
{
	%>
  <h1>Failure</h1>
  <%
  return ;
}
  %>
  <% 
int id =(Integer)session.getAttribute("lid");
LibrarianDAO find = new LibrarianDAOImp();
String name = find.findById(id);
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book Management System</title>
  <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
  <link rel="stylesheet" href="style/style1.css">
  <style type="text/css">
    .marq{
  font-family:Segoe Script;
  }
  #hashi{
			background-color:#0080c0;
		}
		nav a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}
.table-container {
		max-width: 100%;
		overflow-x: auto;
		margin-bottom: 1em;
	  }
	  nav a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}
	  table {
		width: 100%;
		border-collapse: collapse;
		border-spacing: 0;
		font-size: 16px;
		font-weight: 400;
		line-height: 1.5;
		color: #333;
		background-color: #fff;
		border: 1px solid #ccc;
		border-radius: 4px;
		overflow: hidden;
		box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
	  }
	  
	  th,
	  td {
		padding: 12px 15px;
		text-align: left;
	  }
	  
	  th {
		background-color: #f8f8f8;
		font-weight: 700;
		text-transform: uppercase;
		letter-spacing: 0.03em;
		border-bottom: 1px solid #ccc;
	  }
	  
	  tbody tr:nth-of-type(even) {
		background-color: #f4f4f4;
	  }
	  
	  tbody tr:hover {
		background-color: #e0e0e0;
	  }
	  
	  @media screen and (max-width: 600px) {
		table {
		  display: block;
		  overflow-x: auto;
		  white-space: nowrap;
		}
		
		thead, tbody, th, td, tr {
		  display: block;
		}
		
		th {
		  text-align: left;
		}
		
		tbody tr td {
		  border-bottom: 1px solid #ddd;
		}
		
		tbody tr:last-of-type td {
		  border-bottom: none;
		}
	  }
	  
  </style>
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
						<div id="clock"></div></div>
						<div class="nav-item">
							<a href="logout.jsp"><i class="bi bi-box-arrow-right"></i> Logout</a>
						</div>
					</div>
				</div>
			</div>
</nav>
  <header>
    <h1>
    <marquee class="marq" bgcolor = "" direction = "left" loop="" >
    Welcome to BookLibrary System
    </marquee>
    </h1>
   
  </header>
  <main>
  	<div class="slider-container">
		<img src="img/img2.jpg" class="active">
		<img src="img/img3.jpg">
		<img src="img/img4.jpg">
		<img src="img/img5.jpg">
		<div class="prev">&#10094;</div>
		<div class="next">&#10095;</div>
	</div>

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByTagName("img");
			for (i = 0; i < slides.length; i++) {
				slides[i].classList.remove("active");
			}
			slideIndex++;
			if (slideIndex > slides.length) {slideIndex = 1}
			slides[slideIndex-1].classList.add("active");
			setTimeout(showSlides, 5000); // Change image every 5 seconds
		}

		document.querySelector(".prev").addEventListener("click", function() {
			slideIndex--;
			if (slideIndex < 1) {slideIndex = document.getElementsByTagName("img").length}
			showSlides();
		});

		document.querySelector(".next").addEventListener("click", function() {
			slideIndex++;
			if (slideIndex > document.getElementsByTagName("img").length) {slideIndex = 1}
			showSlides();
		});
	</script>
	<div class="table-container">
		<table>
		  <thead>
			<tr>
			  <th>Book Name</th>
			  <th>Book ID</th>
			  <th>Author</th>
			  <th>Subject</th>
			   <th>Add To card</th>
			</tr>
		  </thead>
		  <tbody>
		  <%
		  BookDAO book = new BookDAOImp();
		  
		  ResultSet rs = book.findAll();
		  System.out.print(rs);
		  while(rs.next())
		  {
			  %>
		  <tr>
		  <td><%=rs.getString(1) %></td>
		  <td><%=rs.getString(2) %></td>
		  <td><%=rs.getString(3) %></td>
		  <td><%=rs.getString(4) %></td>
		  <td><a href=AddCard?bid=<%=rs.getString(2)%>&bname=<%=rs.getString(1)%>&bsubject=<%=rs.getString(4)%>>Add to Card</a></td>
		</tr>
		  <% 
		  }
		  %>
		  </tbody>
		</table>
  </main>
  <footer class="site-footer pb-0">
		<div class="container">
			<p>&copy; 2023 BookLibrary System. All rights reserved. | Design By
				Hashikesh Shinde</p>

				</div>
	</footer>

</body>
</html>