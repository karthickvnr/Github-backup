<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>

<style>

.jumbotron {
background: #358CCE;
color: #FFF;
border-radius: 0px;
}

body, html
{
    height: 100%;
    margin: 0;
}

.bg {
    
    background-image: url("resources/contact us.jpg");    
    height: 100%;     
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}



</style>

</head>

<body>
<div class="bg">
<jsp:include page="header.jsp"></jsp:include>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                 <h1> Contact us </h1>                 
            </div>
        </div>
    </div>


<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><font color = "red"><span class="glyphicon glyphicon-globe"></span>Our office</font></legend>
            <address>
                <strong>My Online Provisional Store</strong><br>
                No.255, Rangarajapuram Main Road,<br>
                Kodambakkam, Chennai - 600 024 <br>
                <abbr title="Phone">
                    P:</abbr>
                (+91) 9080852125
            </address>
            <address>
                <strong>Please send your queries to</strong><br>
                <a href="mailto:#">karthickvnr@gmail.com</a>
            </address>
            </form>
        </div>
    </div>
</div>


<div class="contmap">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7773.714701204571!2d80.22571289999993!3d13.044750600000008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a5266f0ffffffff%3A0x4678cc7bd2e5272f!2sRaghavendra+Mandapam!5e0!3m2!1sen!2sin!4v1509678661580" width="100%" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>

</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>