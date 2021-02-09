<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Form</title>
</head>
<body>
<form action="productcontroller.do" method="POST">
		<table>
			<tr>
				<td><input hidden="true" type="text" name="id" value="${product.id}"/></td>
			</tr>
			<tr>
				<td>Enter Product Name:</td>
				<td><input type="text" name="product-name" value="${product.name}"/></td>
			</tr>

			<tr>
				<td>Enter Price:</td>
				<td><input type="text" name="price" /></td>
			</tr>

			<tr>
				<td>Enter Quantity:</td>
				<td><input type="text" name="quantity" /></td>
			</tr>

		</table>

		<input type="submit" />
	</form>
<a href="home.jsp">Back to home page</a>

</body>
</html>