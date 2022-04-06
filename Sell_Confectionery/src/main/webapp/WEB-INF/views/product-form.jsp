<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE PRODUCT</title>
</head>
<body>
	<h1>HEADER</h1>
	<hr>
	<h2></h2>
	<br>
	<input type="text" value="${product.productName}" />
	<input type="text" value="${product.price}" />
	<input type="text" value="${product.publisher}" />
	<button value="/product/save">Save</button>
	
	<h1>FOOTER</h1>
</body>
</html>