<%@ page language="java" contentType="text/html" import="com.model.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Description Page</title>
</head>
<body>

<jsp:include page="UserHeader.jsp"></jsp:include>

<div class="container">
<div class="row">

<div class="col-xs-5 item-photo">
<img src="<c:url value="/resources/images/${product.productId}.jpg"/>"  width="400px" height="350px" />
</div>

<br>
<br>
<div class="col-xs-5" style="border:2px solid gray">

<h3>${product.productName}</h3>
<div class="rating">
<span class="glyphicon glyphicon-star"></span>
<span class="glyphicon glyphicon-star"></span>
<span class="glyphicon glyphicon-star"></span>
<span class="glyphicon glyphicon-star"></span>
<span class="glyphicon glyphicon-star"></span>
(24 reviews)
</div>
<h4>${product.productDesc}</h4>
<h4 class="cost"><span class="fa fa-inr"></span>${product.price}</h4>

<div class="section" style="padding-bottom:20px;">

	<form action="${pageContext.request.contextPath}/addToCart" method="post">
	<input type="hidden" value="${product.productId}" name="pId">
	<input type="hidden" value="${product.price}" name="pPrice">
	<input type="hidden" value="${product.productName}" name="productName">
	<input type="hidden" value="${product.pimage}" name="imgname">
	<input type="hidden" value="${product.stock}" name="pStock">
	<h3><font color="red">Please enter the quantity of requirement</font></h3>	
	<input type="number" class="form-control" name="quantity" required>	
	<br>
	<input class="btn btn-primary btn-lg" type="submit"value="Add To Cart">
		
	</form>

</div>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>