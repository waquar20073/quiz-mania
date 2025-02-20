<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html>
<head>
<title>Error 404</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Leaf 404 Error Page template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="${css}/error404/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${css}/error404/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons -->
<!-- //Custom Theme files -->
<!-- web font -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->
<link href="//fonts.googleapis.com/css?family=Share+Tech+Mono" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="agileits-main"> 
		<div class="agileinfo-row">
			<div class="w3top-nav">	
				<div class="w3top-nav-left">	
					<h1><a href="index.html">Leaf 404</a></h1>
				</div>	
				<div class="w3top-nav-right">	
					<h6><a href"#">Contact Us</a></h6> 
				</div>	
				<div class="clear"></div>
			</div>	
			<div class="w3layouts-errortext"> 
				<h2><span>4</span> <span>0</span> <span>4</span></h2>
				<h3>Sorry! ${message} <br><a href="home">Go to Home Page</a></h3>
				<p class="w3lstext">We are really sorry.</br>
				${message}</p>
			</div>	
		</div>	
	</div>	
	<!-- //main -->
	<!-- copyright -->
	<div class="copyright w3-agile">
		<p>© 2017 Leaf 404 Error Page . All rights reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a></p>
	</div>
	<!-- //copyright --> 
</body>
</html>