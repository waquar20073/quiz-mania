<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html lang="zxx">

<head>
	<title>Latest Login Form Responsive Widget Template :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Latest Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->

	<!-- css files -->
	<link rel="stylesheet" href="${css}/resetpass/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="${css}/resetpass/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->

	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	 rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<div class="main-bg">
		<!-- title -->
		<h1>Reset Password</h1>
		<!-- //title -->
		<!-- content -->
		<div class="sub-main-w3">
			<div class="bg-content-w3pvt">
				<form action="resetpass" method="get">
					<p class="legend">Enter the details<span class="fa fa-hand-o-down"></span></p>
					<div class="input">
						<input type="email" placeholder="Email" name="emailid" required />
						<span class="fa fa-envelope"></span>
					</div>
					<c:if test= "${mail_sent} == true" >
						<div class="input">
							<input type="password" placeholder="OTP" name="otp" required />
							<span class="fa fa-unlock"></span>
						</div>
    				</c:if>
    				<c:if test= "${otp_verified} == true" >
						<div class="input">
							<input type="password" placeholder="Password" name="password" required />
							<span class="fa fa-unlock"></span>
						</div>
						<div class="input">
							<input type="password" placeholder="Retype Password" name="repassword" required />
							<span class="fa fa-unlock"></span>
						</div>
					</c:if>
					<button type="submit" class="btn submit">
						<span class="fa fa-sign-in"></span>
					</button>
				</form>
			</div>
		</div>
		<!-- //content -->
		<!-- copyright -->
		<div class="copyright">
			<h2>&copy; 2019 Latest Login Form. All rights reserved | Design by
				<a href="http://w3layouts.com" target="_blank">W3layouts</a>
			</h2>
		</div>
		<!-- //copyright -->
	</div>
</body>

</html>