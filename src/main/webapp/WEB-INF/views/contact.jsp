<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>Contact Us</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="${images}/contactus/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${css}/contactus/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${css}/contactus/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${css}/contactus/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${css}/contactus/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${css}/contactus/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${css}/contactus/util.css">
	<link rel="stylesheet" type="text/css" href="${css}/contactus/main.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="bg-contact100" style="background-image: url('${images}/contactus/bg-01.jpg');">
		<div class="container-contact100">
			<div class="wrap-contact100">
				<div class="contact100-pic js-tilt" data-tilt>
					<img src="${images}/contactus/img-01.png" alt="IMG">
				</div>

				<form class="contact100-form validate-form" action="sendmessage" method="get">
					<span class="contact100-form-title">
						Get in touch
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Name is required">
						<input class="input100" type="text" name="name" placeholder="Name">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Message is required">
						<textarea class="input100" name="message" placeholder="Message"></textarea>
						<span class="focus-input100"></span>
					</div>

					<div class="container-contact100-form-btn">
						<button class="contact100-form-btn">
							Send
						</button>
					</div>
					Created by Colorlib.com under CC BY 3.0 License.
				</form>
			</div>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="${js}/contactus/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${js}/contactus/popper.js"></script>
	<script src="${js}/contactus/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${js}/contactus/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${js}/contactus/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="${js}/contactus/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
