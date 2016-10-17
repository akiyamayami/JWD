<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="UTF-8">
  <title>Time Manager</title>
  <link rel="stylesheet" type="text/css" href="fileCss.css">
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <script type="text/javascript" src="javasc.js"></script>
  <link rel="stylesheet" type="text/css" href="HomePage.css">
</head>

<body translate="no">
<header class="navbar" id="top">
	<div class="container">
		<div class="row">
			<a href="Home Page.html" id="q">
       <span class="glyphicon glyphicon-home"></span>
       Time Manager
      </a>
		</div>
	</div>
</header>
<div class="login">
	<form class="login-form" action="loginAuthenticate.jsp">
	    <p class="login-text">
	      <span class="fa-stack fa-2x">
	      <i class="fa fa-circle fa-stack-2x"></i>
	      <i class="fa fa-lock fa-stack-1x"></i>
	    </span>
	    </p>
	    
	    <input type="text" class="login-username" autofocus="true" required="true" placeholder="ID" name="ID" />
	    <input type="password" class="login-password" required="true" placeholder="Password" name="Pass" />
	    <label class="labelcheckbox"><input type="checkbox" />Remember Me</label>
	    <input type="submit" value="Login" class="login-submit"/>
	    <p style="color:red;">
			<c:if test="${not empty param.errMsg}">
	        	<c:out value="${param.errMsg}" />
	        </c:if>
		</p>
  	</form>
  
</div>

<footer>
	<a href="Register.jsp" class="login-forgot-pass" >Register</a>
</footer>
</body>
</html>