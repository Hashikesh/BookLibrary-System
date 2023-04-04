<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="form1">
		<h1>Change Password</h1>
<form action="ConfirmPassword" method=post>
             <div class="card-text">
				<input type="text" name="username" required><label>Enter username</label>
			</div>
			<div class="card-text">
				<input type="password" name="newPassword" required><label>Enter new password</label>
			</div>
			<div class="card-text">
				<input type="password" name="new2Password"  required><label>Re-enter password</label>
			</div>
			<input type="submit" value="ChangePassword">
			</form>
	
</body>
</html>