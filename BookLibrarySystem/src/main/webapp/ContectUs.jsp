<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookLibrary System</title>
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
<style type="text/css">
<style> /* Reset styles */ {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Body styles */
body {
	font-family: Arial, sans-serif;
	font-size: 16px;
	line-height: 1.5;
}

/* Header styles */
header {
	background-color: #333;
	color: #fff;
	margin: 0;
	padding: 15px;
	justify-content: space-between;
	align-items: center
}

header h1 {
	font-size: 28px;
}

nav ul {
	display: flex;
	list-style: none;
}

nav li {
	margin-right: 20px;
}

nav li:last-child {
	margin-right: 0;
}

nav a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

/* Main styles */
/* main {
	padding: 10px;
	display: flex;
	flex-direction: column;
	align-items: center;
} */
.cta {
	font-family: Segoe Script;
	background-color: #FEFBE9;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	padding: 10px;
	text-align: center;
}

.cta h2 {
	color: red;
	font-size: 36px;
}

.cta p {
	color: red;
	font-size: 18px;
}

.btn {
	background-color: #333;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
	text-decoration: none;
	font-weight: bold;
	transition: background-color 0.3s;
}

.btn:hover {
	background-color: #555;
}

/* Footer styles */
footer {
	background-color: #555;
	color: #fff;
	padding-top: 5px;
	padding-left: 15px;
	padding-right: 15px;
	text-align: center;
	width: 100%;
	/* position: fixed; */
	bottom: 0;
}

.carousel {
	object-fit: cover;
	width: 100% /* height:350;
position: relative;
width:457px */;
}
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark "
			style="background-color: #3498DB;">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#mynav">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-center"
					id="mynav">
					<div class="nav-item lh-1">
						<a class="navbar-brand fs-6 p-0 fst-italic "><img
							src="img/book.png" width="50" height="40" alt="">BookLibrary System</a>
					</div>
					<div
						class="navbar-nav col-9 justify-content-end align-items-center">
						<div class="nav-item">
							<a href="index.jsp" class="px-3 py-10"><i class="bi bi-file-person"></i> Home</a>
						</div>
						<div class="nav-item">
							<a href="adminLogin.jsp" class="px-3 py-10"><i class="bi bi-door-open"></i> Admin Login</a>
						</div>
						<div class="nav-item">
							<a href="login.jsp" class="px-3 py-10"><i class="bi bi-box-arrow-in-right"></i> Librarian Login</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<section class="cta">
	<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-18 col-18">
					<div class="justify-content-right">
						<ul class="list-unstyled">

							<li id="ContactUs"><h5>Contact Us</h5></li>
							<a>Email:-booklibrarysystem@gmail.com</a>
							<br>
							<a>phone:-9898989898</a>

						</ul>

					</div>
				</div>
			</div>
	</section>
	<br>
	<footer class="site-footer pb-0">
			<p>&copy; 2023 BookLibrary System. All rights reserved. | Design By
				Hashikesh Shinde</p>
	</footer>
</body>
</html>