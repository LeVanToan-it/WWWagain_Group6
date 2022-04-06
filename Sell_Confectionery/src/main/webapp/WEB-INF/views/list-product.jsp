<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LIST PRODUCT</title>
</head>
<body>
	<input type="button" value="Add Product"
		onclick="window.location.href='showFormForAdd'; return false;" />

	<table>
		<tr>
			<th>Product Name</th>
			<th>Price</th>
			<th>Publisher</th>
			<th>Action</th>
		</tr>
		<!-- loop over and print our customers -->
		<c:forEach var="product" items="${PRODUCT_LIST}">
			<!-- construct an "update" link with customer id -->
			<c:url var="updateLink" value="/products/showFormForUpdate">
				<c:param name="productId" value="${product.id}" />
			</c:url>
			<!-- construct an "delete" link with customer id -->
			<c:url var="deleteLink" value="/products/delete">
				<c:param name="" productId"" value="${product.id}" />
			</c:url>
			<tr>
				<td>${tempCustomer.productName}</td>
				<td>${tempCustomer.price}</td>
				<td>${tempCustomer.publisher}</td>
				<td>
					<!-- display the update link --> <a href="${updateLink}">Update</a>
					| <a href="${deleteLink}"
					onclick="if (!(confirm('Are you sure you want to delete this product?'))) return false">Delete</a>
				</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>