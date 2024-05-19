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
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html lang="en">
<head>
<title>Photo Stills Photography Category Flat Bootstrap Responsive Web Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Photo Stills Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
	
	<!-- css files -->
    <link href="${css}/quiz/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="${css}/quiz/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="${css}/quiz/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->
	
	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<!-- //google fonts -->
	
</head>
<body>

<div class="content">
	<div class="container">
	
	<section class="banner_w3lspvt" id="home">
		<div class="csslider infinity" id="slider1">
			<input type="radio" name="slides" checked="checked" id="slides_1"/>
			<input type="radio" name="slides" id="slides_2"/>
			<input type="radio" name="slides" id="slides_3"/>
			<input type="radio" name="slides" id="slides_4"/>
			<input type="radio" name="slides" id="slides_5"/>

			<ul class="banner_slide_bg">
				<li>
					<div class="slider-info">
					<form>
						<div class="bs-slider-overlay1">
							<h3 class="heading text-center mb-md-5 mb-4">QUESTION IS HERE WHATS AAAAAPPPPP</h3>
							<div class="row">
								<div class="col-lg-7">
									<div class="featured-left text-center row">
										<div class="col-sm-6 mb-4">
											<div class="ser-grid icon1">
												<input type="radio" name="options" />
												<span class="fa fa-weibo" aria-hidden="true"></span>
												<h3 class="mb-2">Photography</h3>
											</div>
										</div>
										<div class="col-sm-6 mb-4">
											<div class="ser-grid icon2">
												<input type="radio" name="options" />
												<span class="fa fa-weibo" aria-hidden="true"></span>
												<h3 class="mb-2"> Wedding </h3>
											</div>
										</div>
										<div class="col-sm-6 mb-4">
											<div class="ser-grid icon3">
												<input type="radio" name="options" />
												<span class="fa fa-weibo" aria-hidden="true"></span>
												<h3 class="mb-2">Parties</h3>
											</div>
										</div>
										<div class="col-sm-6 mb-4">
											<div class="ser-grid icon4">
												<input type="radio" name="options" />
												<span class="fa fa-weibo" aria-hidden="true"></span>
												<h3 class="mb-2">Videography</h3>
											</div>
										</div>
									</div>
									<div class="text-left">
												<button class="btn btn-success btn-lg">Submit</button>
												<button class="btn btn-warning btn-lg" hidden>Mark for Review</button>
												<button class="btn btn-danger btn-lg" hidden>Reset</button>	
												<button class="btn btn-primary btn-lg">Skip</button>												
									</div>
								</div>
								<div class="col-lg-5 col-md-6">
									<span><h4 align="center" id="timer">TIME HH:MM:SS</h4></span>
									<img src="${images}/quiz/services.jpg" class="img-fluid" alt="" />
								</div>
								</div>
								<div class="col-lg-12 col-md-12" hidden>
									<span><h4 align="center">NAVIGATION</h4></span>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">1</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">2</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">3</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">4</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">5</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">6</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">7</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">8</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">9</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">10</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">11</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">12</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">13</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
									<a style="background:white;border:1px;border-color:gray;font-size:20px;" href="#">14</a>
								</div>
							</div>
						</div>
					</form>
					</div>
				</li>
				
			</ul>
			<div class="navigation"> 
				<div>
				  <label for="slides_1"></label>
				  <label for="slides_2"></label>
				  <label for="slides_3"></label>
				  <label for="slides_4"></label>
				  <label for="slides_5"></label>
				</div>
			</div>
		</div>
	</section>
	<!-- //banner -->
	<!-- footer -->
	<section class="foooter-section pt-3 pb-5 position-relative">
		<div class="d-md-flex justify-content-between footer-inner">
			<!-- copyright -->
			<div class="copy-right text-lg-right">
				<p class="">© 2019 Photo Stills. All rights reserved | Design by	<a href="http://w3layouts.com"> W3layouts.</a></p>
			</div>
			<!-- copyright -->
		</div>
	</section>
	<!-- //footer -->
	</div>
</div>	

</body>
</html>

<script type="text/javascript">
	var min = 125;
	var hour = 0;
	var timer = min * 60;
	var sec = 0;
	function countdown() {
		sec = parseInt(timer % 60);
		min = parseInt(timer / 60);
		hour = parseInt(min / 60);
		min = min % 60;
		hour = (hour < 10) ? "0" + hour : hour;
		min = (min < 10) ? "0" + min : min;
		sec = (sec < 10) ? "0" + sec : sec;
		if (timer < 1) {
			alert("TIME UP");
		}

		document.getElementById("timer").innerHTML = "<b>Time Left: </b>"
				+ hour.toString() + ":" + min.toString() + ":" + sec.toString();
		timer--;
		setTimeout(function() {
			countdown();
		}, 1000);

	}
	countdown();
</script>