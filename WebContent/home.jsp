<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<h1>Welcome ${user.username} to the home page!</h1>

<a href="productcontroller.do?action=show">Show all Product</a>
<a href="productcontroller.do?action=add">Add a Product</a>
<a href="productcontroller.do?action=remove">Remove Product</a>
<a href="productcontroller.do?action=update">Update</a>
<a href="LogoutController">Log Out</a>
</body>
</html>