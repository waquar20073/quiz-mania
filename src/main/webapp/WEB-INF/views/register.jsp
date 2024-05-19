<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--A Design by W3layouts
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html lang="en">
<head>
<title>Register Now</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Course Register Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript">
function check() {
    if(document.getElementById("checkbox").checked==false){
        alert("Please Agree with our Terms and Conditions");
		location.reload();
    }
}
function ShowHideDiv() {
    var category = document.getElementById("category2");
    var org = document.getElementById("org");
    org.style.display = category.value == "Student" ? "block" : "none";
    var category = document.getElementById("category2");
    var org = document.getElementById("organizationDiv");
    org.style.display = category.value == "Organization" ? "block" : "none";
}
</script>

<!-- //custom-theme -->
<!-- css files -->
<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="${css}/register/style.css" type="text/css" rel="stylesheet" media="all">   
<!-- //css files -->

<link rel="stylesheet" href="${css}/register/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->

</head>
<!-- body starts -->
<body onload="ShowHideDiv()">
<!-- section -->
<section class="register">
	<div class="register-full">
		<div class="register-left">
			<div class="register">
				<div class="logo">
					<a href="#"><span class="fa fa-graduation-cap" aria-hidden="true"></span></a>
				</div>
				<h1>Join us and let the learning begin...</h1>
				<p>We provide a great platform to connect educators with their students where quiz could easily be organized.</p>
				<div class="content3">
					<ul>
						<li><a class="" href="home"> Home </a></li>
						<li><a class="read" href="login"> Login </a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="register-right">
			<div class="register-in">
				<h2><span class="fa fa-pencil"></span> register here</h2>
				<div class="register-form">
					<form action="registernow" method="post">
						<div class="fields-grid">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="name" required=""> 
								<label>Enter Full Name</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="email" required="">
								<label>Email</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="password" required="">
								<label>Password</label>
								<span></span>
							</div>
							<div class="styled-input agile-styled-input-top">
								<select id="category2" name="category" onchange = "ShowHideDiv()" required="">
									<option value="">Select your Category</option>
									<option value="Organization">Organization</option>
									<option value="Student">Student</option>
								</select>
								<span></span>
							</div>
							<div class="styled-input agile-styled-input-top">
								<select id="org" name="organization" required="">
									<c:forEach var="org_name" items="${organizations}">
										<option value="${org_name}">${org_name}</option>
									</c:forEach>
									<!-- 
									<option value="">Select your Organization</option>
									<option value="Organization">OrganizationNAME1</option>
									<option value="Student">OrganizationNAME2</option>
									 -->
								</select>
								<span></span>
							</div>
							<div id="organizationDiv" class="styled-input agile-styled-input-top" hidden>
								<input type="text" name="organizationname" required=""> 
								<label>Enter Organization Name</label>
								<span></span>
							</div>
							<div class="clear"> </div>
							 <label class="checkbox"><input type="checkbox" name="checkbox" checked><i></i>I agree to the <a href="#">Terms and Conditions</a></label>
						</div>
						<input type="submit" value="Register" onClick="check()">
					</form>
				</div>
			</div>
			<div class="clear"> </div>
		</div>
	<div class="clear"> </div>
	</div>
	<!-- copyright -->
	<p class="agile-copyright">© 2018 Course Register Form. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">W3layouts</a></p>
	<!-- //copyright -->
</section>
<!-- //section -->
</body>	
<!-- //body ends -->
</html>