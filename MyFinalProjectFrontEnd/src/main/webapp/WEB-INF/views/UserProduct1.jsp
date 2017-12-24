<%@ page language="java" contentType="text/html" import="com.model.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
    	.row{
		    margin-top:40px;
		    padding: 0 15px;
		}
		.clickable{
		    cursor: pointer;   
		}

		.panel-heading div {
			margin-top: -18px;
			font-size: 25px;
		}
		.panel-heading div span{
			margin-left:5px;
		}
		.panel-body{
			display: none;
		}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Online Provisional Store</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<script type="text/javascript">

</script>

<jsp:include page="UserHeader.jsp"></jsp:include>
Welcome : ${sessionScope.username}
<br>
<br>

<body>
<div class="container">    
			<div class="col-lg-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h2 class="panel-title">PRODUCT DETAILS</h2>
						<!-- <div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div> -->
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="task-table-filter" data-action="filter" data-filters="#task-table" placeholder="Filter Tasks" />
					</div>
					<table class="table table-hover" id="task-table">
						<thead>
							<tr>
								<td><b>Product Name</b></td>
								<td><b>Price</b></td>
								<td><b>Category</b></td>
								<td><b>Stock</b></td>
								<td><b>Photo</b></td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${productList}" var="product">
							<!-- <tr bgcolor="cyan"> -->
							<td>${product.productName}</td>
							<td>${product.price}</td>
							<td>${product.catName}</td>
							<td>${product.stock}</td>
							<td>
							<a href="productDetails/${product.productId}">
							<img src="<c:url value="resources/images/${product.productId}.jpg"/>" width="50px" height="50px">
							</a>
							</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>
	