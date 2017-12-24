 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Store</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 75%;
}

th, td {
    padding: 25px;
}
tr:hover{background-color:#f5f5f5}
.modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
}

</style>
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>
<br>
<br>
<br>
<h2><b>Cart Information</b></h2>
<div style="color:blue; text-align:center;">Cart Total:${grandtotal}</div>
<br><br>
<div align="center" >
<div class="container">
<table class="table table-striped" border="1px">
<thead>
  		<tr>
  		<th>Product ID</th>
  			<th>ProductName</th>
			<th>Quantity</th>
			<th>SubTotal</th>
			<th>Image</th>
			<th>Operation</th>
			
			
			</tr>
			</thead>
			<tbody>
			<c:forEach var="list1" items="${cart1}">
                <tr>
                <td><c:out value="${list1.productId}"/></td>
                 <td><c:out value="${list1.productName}" /></td>
                 <td><c:out value="${list1.quantity}" /></td>
                  <td><c:out value="${list1.productPrice*list1.quantity}" /></td>
                  <td style="width:171px;">
                  <img src="${pageContext.request.contextPath}/resources/images/${list1.productId}.jpg" height="75" width="75"></td>
                  <td><form>
                  <button  class="btn btn-info btn-lg" name = "ProductId" value = "${list1.productId}" type = "submit" formmethod="post" formaction="delete1"> <span class="glyphicon glyphicon-trash">Remove</span></button></form></td>
                </tr>
            </c:forEach> 
            </tbody>
            <tr>
            <td><a href="userHome" class="btn btn-warning">Continue Shopping</a></td>

			<td><a href="ack" class="btn btn-success">Checkout</a></td>
            </tr>
            </table>
            </div>
            </div>
            </body>
            </html>
            