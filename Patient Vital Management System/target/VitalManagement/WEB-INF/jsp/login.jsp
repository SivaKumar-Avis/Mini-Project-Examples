<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
body {
	background-color: linen;
}

h1 {
	color: maroon;
	margin-left: 40px;
}

/* Full-width inputs */
#username, #password {
	width: 50%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

#submit {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 50%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div align="center">
		<b><h1>PATIENT VITAL MANAGEMENT SYSTEM</h1></b>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div align="center">
		<font color="red">${message}</font>
		<form:form align="center" id="loginForm" method="post" action="login"
			modelAttribute="loginBean">
			<form:label path="username">
				<center>Username</center>
			</form:label>
			<br>
			<form:input id="username" name="username" path="" />
			<br>
			<br>
			<br>
			<form:label path="username">
				<center>Password</center>
			</form:label>
			<br>
			<form:password id="password" name="password" path="" />
			<br>
			<br>
			<br>
			<input id="submit" type="submit" value="Login" />
		</form:form>
	</div>
</body>
</html>