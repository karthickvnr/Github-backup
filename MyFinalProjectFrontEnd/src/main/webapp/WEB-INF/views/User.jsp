<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup Form</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<style>

body, html
{
    height: 100%;
    margin: 0;
}
</style>

</head>

<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<!-- <div class="jumbotron"> -->
<h2>Registration Page</h2>
<div class="col-lg-12">
<div class="row">


<form:form action="AddUser" modelAttribute="user" name="myform"> 
<div class="col-lg-8">

	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>    
    <input id="login-userName" type="text" class="form-control" name="userName" value="" placeholder="username or email"required>                                        
    </div>
    </div>    
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>    
    <input id="userEmail" type="text" class="form-control" name="userEmail" value="" placeholder="Please enter your email"required>                                        
    </div>
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>    
    <input id="userPassword" type="password" class="form-control" name="userPassword" value="" placeholder="Please type the password"required>                                        
    </div>
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>    
    <input id="userPhone" type="text" class="form-control" name="userPhone" value="" placeholder="Enter phone number"required>                                        
    </div>
    </div>
    
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>    
    <input id="userAddress" type="text" class="form-control" name="userAddress" value="" placeholder="Enter address"required>                                        
    </div>
    </div>
		
	<br>
		<center>
	<button type="submit" class="btn btn-lg btn-info" onclick="phonenumber();">Submit</button>
	<button type="reset"  class="btn btn-lg btn-info">Cancel</button>
	</center>	
		
</div>

<script type="text/javascript">

/* function userName()
{
var x = document.forms["myForm"]["fname"].value;
if (x == "")
{
    alert("Name must be filled out");
    return false;
}
} */

function  phonenumber()
{
	var inputtxt = $('#userPhone').val();
	var value = Number(inputtxt);
	var returnCode = false;
	if(!isNaN(value))
		{
returnCode = true;
		}
	else
		{
		alert("Invalid Phone Number");
		}
	return returnCode;
}

 
</script>

</form:form>

</div>
</div>
</div>

</div>

</body>
</html>