<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <title>PickFresh</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>

<br><br>
<br>
<form:form class="form-horizontal"> 
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="15%">Product ID</th>
<th width="15%">Product Name</th>
<th width="10%">Product Quantity</th>
<th width="10%">Product Prize</th>
<th width="10%">Product Description</th>
<th width="10%">Product Category</th>
<th width="10%">Image</th>
<th width="10%">Action</th>
</tr>
</thead>
<tbody>
<c:forEach var="product" items="${productList}">
<tr>
    <td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.stock}</td>
		<td>${product.price}</td>
		<td>${product.catName}</td>
    <td>
    <img src="resources/images/${product.productId}.jpg" height="100" width="100"></td>
    <td>
    
       <button  class="btn btn-info btn-lg" name="productId" value="${product.productId}" type = "submit" formmethod="GET" formaction="cart"> 
      <span class="glyphicon glyphicon-shopping-cart"></span></button></td>
</tr>
</c:forEach>
</tbody>
</table>
</form:form>

</body>
