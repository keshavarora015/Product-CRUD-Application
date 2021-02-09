<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
${param.error}
${param.message}
	<form action="controller" method="post">
		<table>
			<tr>
				<td>Enter Name :</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>Enter Password :</td>
				<td><input type="password" name="password" /></td>
			</tr>
		</table>
		<input type="submit" />
	</form>
	<a href="register.jsp">Register here</a>
</body>
</html>


