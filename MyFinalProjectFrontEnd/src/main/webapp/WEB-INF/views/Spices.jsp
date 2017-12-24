<%@ page language="java" contentType="text/html" import="com.model.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style>
 
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}

  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
      
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }

	
  </style>
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>

<c:forEach items="${productList}" var="product">
<div class="bg-1">
  <div class="container">
      
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
        <a href="productDesc/${product.productId}">
          <img src="<c:url value="resources/images/${product.productId}.jpg"/>" width="400" height="400"></a>
        </div>
      </div>
  		 <div class="col-sm-8">
          <p><strong>${product.productName}</strong></p>
          <p>${product.productDesc}</p>
          <p>Rs: ${product.price}</p>
          <button class="btn">Add to Cart</button>
        </div>
      </div>

   
   
    </div>
    
    </div>
 

</c:forEach>

</body>
</html>