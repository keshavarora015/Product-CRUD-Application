<%@page import="java.util.List"%>
<%@page import="com.productcart.productdao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Remove links</th>
		</tr>
		<c:forEach items="${products}" var="product">
		<tr>
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.price}</td>
			<td>${product.quantity}</td>
			<td>
				<a href="productcontroller.do?action=updateById&id=${product.id}">update
					this product</a>
			</td>
		</tr>
		</c:forEach>
	</table>
	<a href="home.jsp">Back to Home</a>

</body>
</html>



				
			