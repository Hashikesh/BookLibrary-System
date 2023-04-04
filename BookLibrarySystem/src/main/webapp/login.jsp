<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<div class="form1">
		<h1>Login</h1>
		<form action="Validate" method=post>
			<div class="card-text">
				<input type="text" name="username" required><label>Username</label>
			</div>
			<div class="card-text">
				<input type="password" name="password"  required> <label>Password</label>
			</div>
			<input type="submit" value="Login">
			<div class="card-pass"><a href="forgotPassword.jsp">forgot password ?</a></div>
		</form>
	</div>
</body>
</html>