<%@page import="java.util.List"%>
<%@page import="com.productcart.productdao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Product</title>
</head>
<body>
	<table border="1">
	
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
		</tr>
		<c:forEach items="${products}" var="product">
		<tr>
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.price}</td>
			<td>${product.quantity}</td>
		</tr>
		</c:forEach>
	</table>
	<a href="home.jsp">Go to HomePage</a>
</body>
</html>