<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<spring:url var="misc" value="/resources/misc" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Organization Dashboard</title>
<!--

Template 2102 Constructive

http://www.tooplate.com/view/2102-constructive

-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet" href="${css}/odash/fontawesome-all.min.css">
<link rel="stylesheet" href="${css}/odash/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${css}/odash/magnific-popup.css" />
<link rel="stylesheet" type="text/css"
	href="${misc}/odash/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="${misc}/odash/slick/slick-theme.css" />
<link rel="stylesheet" href="${css}/odash/tooplate-style.css">

<script>
	var renderPage = true;

	if (navigator.userAgent.indexOf('MSIE') !== -1
			|| navigator.appVersion.indexOf('Trident/') > 0) {
		/* Microsoft Internet Explorer detected in. */
		alert("Please view this in a modern browser such as Chrome or Microsoft Edge.");
		renderPage = false;
	}
	/** Show Add a Question Panel */
	function ShowQP() {
		document.getElementById("choosepanel").style.display = "none";
		document.getElementById("quizpanel").style.display = "none";
		document.getElementById("questionpanel").style.display = "block";
	}
	/** Show Add a Quiz Panel */
	function ShowQuizPanel() {
		document.getElementById("choosepanel").style.display = "none";
		document.getElementById("questionpanel").style.display = "none";
		document.getElementById("quizpanel").style.display = "block";
	}
	/** Initially Hides all unnecessary panels */
	function hideAll() {
		document.getElementById("choosepanel").style.display = "block";
		document.getElementById("questionpanel").style.display = "none";
		document.getElementById("quizpanel").style.display = "none";
	}
</script>
</head>

<body onload="hideAll()">
	<!-- Loader -->
	<div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
	</div>

	<!-- Page Content -->
	<div class="container-fluid tm-main">
		<div class="row tm-main-row">

			<!-- Sidebar -->
			<div id="tmSideBar"
				class="col-xl-3 col-lg-4 col-md-12 col-sm-12 sidebar">

				<button id="tmMainNavToggle" class="menu-icon">&#9776;</button>

				<div class="inner">
					<nav id="tmMainNav" class="tm-main-nav">
					<ul>
						<li><a href="#intro" id="tmNavLink1" class="scrolly active"
							data-bg-img="constructive_bg_01.jpg" data-page="#tm-section-1">
								<i class="fas fa-home tm-nav-fa-icon"></i> <span>Introduction</span>
						</a></li>
						<li><a href="#products" id="tmNavLink2" class="scrolly"
							data-bg-img="constructive_bg_02.jpg" data-page="#tm-section-2"
							data-page-type="carousel" onclick="hideAll()"> <i
								class="fas fa-map tm-nav-fa-icon"></i> <span>Manage Quiz</span>
						</a></li>
						<li><a href="#company" class="scrolly"
							data-bg-img="constructive_bg_03.jpg" data-page="#tm-section-3">
								<i class="fas fa-users tm-nav-fa-icon"></i> <span>Check
									Results</span>
						</a></li>
						<li><a href="#members" class="scrolly"
							data-bg-img="constructive_bg_03.jpg" data-page="#tm-section-5">
								<i class="fas fa-users tm-nav-fa-icon"></i> <span>View
									Members</span>
						</a></li>
					</ul>
					</nav>
				</div>
			</div>

			<div class="col-xl-9 col-lg-8 col-md-12 col-sm-12 tm-content">

				<!-- section 1 -->
				<section id="tm-section-1" class="tm-section">
				<div class="ml-auto">
					<header class="mb-4">
					<h1 class="tm-text-shadow">WELCOME {name}</h1>
					</header>
					<p class="mb-5 tm-font-big">You Can Do the Following Tasks as
						an Educator:
					<ul>
						<li>Create Quiz</li>
						<li>Check Results</li>
						<li>Check-out Previously Organised Quiz</li>
						<li>Approve Students' Joining Requests or Remove Them</li>
					</ul>
					</p>
					<a href="#" class="btn tm-btn tm-font-big"
						data-nav-link="#tmNavLink2">Add A Quiz</a>
					<!-- data-nav-link holds the ID of nav item, which means this link should behave the same as that nav item  -->
				</div>
				</section>

				<!-- section 2 -->
				<section id="tm-section-2" class="tm-section tm-section-carousel">


				<!-- Choose Function Panel -->
				<div class="tm-bg-transparent-black tm-contact-box-pad"
					style="width: 150%" id="choosepanel">
					<div class="row mb-4">
						<div class="col-sm-12 col-md-12 ">
							<header>
							<h2 class="tm-text-shadow">CHOOSE ANY OPTION</h2>
							</header>
						</div>
					</div>
					<div class="row tm-page-4-content">
						<div class="col-md-6 col-sm-12 tm-contact-col">
							<p>Create a New Quiz to Test Students' Abilities.</p>
							<button name="createNewQuizBtn" class="btn tm-btn-submit tm-btn "
								onclick="ShowQuizPanel()">Create Quiz</button>
						</div>
						<div class="col-md-6 col-sm-12 tm-contact-col">
							<p>Add New Questions to Existing Quiz</p>
							<button name="startAddingQuestions"
								class="btn tm-btn-submit tm-btn " onclick="ShowQP()">Add
								Questions</button>
						</div>
					</div>
				</div>

				<!-- Add Question Panel -->
				<div class="tm-bg-transparent-black tm-contact-box-pad"
					style="width: 150%" id="questionpanel">
					<div class="row mb-4">
						<div class="col-sm-12 col-md-12 ">
							<header>
							<h2 class="tm-text-shadow">ADD A QUESTION</h2>
							</header>
						</div>
					</div>
					<div class="row tm-page-4-content">
						<div class="col-md-12 col-sm-12 tm-contact-col">
							<div class="contact_message">
								<form action="addQuestion" method="post" class="contact-form">
									<div class="form-group">
										<select
											style="background: transparent; width: 100%; color: white; font-weight: 300; border-radius: 0; padding: 15px;"
											id="org" name="organization_name" required="">
											<option
												style="background: rgba(0, 0, 0, 0.3); color: #fff; text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);"
												value="">Select Quiz</option>
											<option
												style="background: rgba(0, 0, 0, 0.3); color: #fff; text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);"
												value="Organization">Quiz NAME1</option>
											<option
												style="background: rgba(0, 0, 0, 0.3); color: #fff; text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);"
												value="Student">Quiz NAME2</option>
										</select>
									</div>
									<div class="form-group">
										<label for="quiz_name">Question Quiz: </label> <input
											type="textarea" id="question" row="4" name="question"
											class="form-control" placeholder="Write your question here"
											required="">
									</div>
									<div class="form-group">
										<label for="total_questions">Option 1</label> <input
											type="textarea" id="opt1" row="2" name="opt1"
											class="form-control" placeholder="Write Option 1 Here"
											required="">
									</div>
									<div class="form-group">
										<label for="total_questions">Option 2</label> <input
											type="textarea" id="opt2" row="2" name="opt2"
											class="form-control" placeholder="Write Option 2 Here"
											required="">
									</div>
									<div class="form-group">
										<label for="total_questions">Option 3</label> <input
											type="textarea" id="opt3" row="2" name="opt3"
											class="form-control" placeholder="Write Option 3 Here"
											required="">
									</div>
									<div class="form-group">
										<label for="total_questions">Option 4</label> <input
											type="textarea" id="opt4" row="2" name="opt4"
											class="form-control" placeholder="Write Option 4 Here"
											required="">
									</div>
									<div class="form-group">
										<label for="correct_option">Correct Option</label> <input
											type="radio" name="correct_answer" class="form-control"
											value="opt1">Option 1</input> <input type="radio"
											name="correct_answer" class="form-control" value="opt2">Option 2</input>
										<input type="radio" name="correct_answer" class="form-control"
											value="opt3">Option 3</input> <input type="radio"
											name="correct_answer" class="form-control" value="opt4">Option 4</input>
									</div>
									<sec:csrfInput />
									<button style="width: 100%" type="submit"
										class="btn tm-btn-submit tm-btn ml-auto">Add Question</button>
								</form>
							</div>
						</div>
					</div>

				</div>



				<!-- Add Quiz Panel -->
				<div class="tm-bg-transparent-black tm-contact-box-pad"
					style="width: 150%" id="quizpanel">
					<div class="row mb-4">
						<div class="col-sm-12 col-md-12 ">
							<header>
							<h2 class="tm-text-shadow">ADD A QUIZ</h2>
							</header>
						</div>
					</div>
					<div class="row tm-page-4-content">
						<div class="col-md-12 col-sm-12 tm-contact-col">
							<div class="contact_message">
								<c:url value="/addQuiz" var="addQuizURL" />
								<form action="${addQuizURL}" method="post" class="contact-form">
									<div class="form-group">
										<label for="quiz_title">Please Give a Title to the
											Quiz: </label> <input type="text" id="quiz_title" name="quiz_title"
											class="form-control" placeholder="" required="">
									</div>
									<div class="form-group">
										<label for="total_questions">Total Pool of Questions</label> <input
											type="text" id="total_questions" name="total_questions"
											class="form-control" placeholder="" required="">
									</div>
									<div class="form-group">
										<label for="available_questions">Number of Questions
											in Each Set</label> <input type="text" id="available_questions"
											name="available_questions" class="form-control"
											placeholder="" required="">
									</div>
									<div class="form-group">
										<label for="positive_marks">Marks for Correct Answer</label> <input
											type="text" id="positive_marks" name="correct_marks"
											class="form-control" placeholder="" required="">
									</div>
									<div class="form-group">
										<label for="negative_marks">Negative Marks for
											Incorrect Answer</label> <input type="text" id="incorrect_marks"
											name="incorrect_marks" class="form-control"
											placeholder="(0 for no negative marking)" required="">
									</div>
									<div class="form-group">
										<label for="timelimit">Time Limit for Quiz</label> <input
											type="text" id="timelimit" name="time_limit"
											class="form-control" placeholder="In Minutes" required="">
									</div>
									<!-- 
									<div class="form-group" hidden>
										<label for="start_date">Start Date</label> <input type="text"
											id="start_date" name="start_dates" class="form-control"
											placeholder="DD/MM/YYYY" required="">
									</div>
									<div class="form-group" hidden>
										<label for="end_date">End Date</label> <input type="text"
											id="end_date" name="end_dates" class="form-control"
											placeholder="DD/MM/YYYY" required="">
									</div>
									 -->
									<sec:csrfInput />
									<button style="width: 100%" type="submit"
										class="btn tm-btn-submit tm-btn ml-auto" onclick="hideAll()">Create
										Quiz</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				</section>

				<!-- section 3 -->
				<section id="tm-section-3" class="tm-section">
				<div
					class="tm-bg-transparent-black tm-contact-box-pad table-responsive">
					<div class="row mb-4">
						<div class="col-sm-12">
							<header>
							<h2 class="tm-text-shadow">View Results</h2>
							</header>
						</div>
					</div>
					<div class="row tm-page-4-content">
						<div class="col-md-6 col-sm-12 tm-contact-col ">
							<div class="contact_message ">
								<table class="table table-hover">
									<thead class="thead-dark">
										<tr>
											<th scope="col">#</th>
											<th scope="col">Quiz Name</th>
											<th scope="col">Average Performance</th>
											<th scope="col">Passed</th>
											<th scope="col">Failed</th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Alphabets</td>
											<td>45</td>
											<td>70</td>
											<td>10</td>
											<td><button type="submit" name="details">Individual
													Results</button></td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Geography Chapter 1</td>
											<td>45</td>
											<td>50</td>
											<td>3</td>
											<td><button type="submit" name="details">Individual
													Results</button></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div>
				</section>


				<!-- section 5 -->
				<section id="tm-section-5" class="tm-section">
				<div
					class="tm-bg-transparent-black tm-contact-box-pad table-responsive">
					<div class="row mb-4">
						<div class="col-sm-12">
							<header>
							<h2 class="tm-text-shadow">View Members</h2>
							</header>
						</div>
					</div>
					<div class="row tm-page-4-content">
						<div class="col-md-6 col-sm-12 tm-contact-col">
							<div class="contact_message">
								<table class="table table-hover">
									<thead class="thead-dark">
										<tr>
											<th scope="col">#</th>
											<th scope="col">Name</th>
											<th scope="col">Tests Attempted</th>
											<th scope="col">Average Score</th>
											<th scope="col">Delete/Approve</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>45</td>
											<td>70</td>
											<td><button type="submit" name="delete">Delete</button></td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>0</td>
											<td>0</td>
											<td><button type="submit" name="Approve">Approve</button></td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div>
				</section>
			</div>
			<!-- .tm-content -->
			<footer class="footer-link">
			<p class="tm-copyright-text">
				Copyright &copy; 2018 Constructive Co. Ltd. - Design: <a
					href="https://www.facebook.com/tooplate" target="_parent">Tooplate</a>
			</p>
			</footer>
		</div>
		<!-- row -->
	</div>
	<div id="preload-01"></div>
	<div id="preload-02"></div>
	<div id="preload-03"></div>
	<div id="preload-04"></div>

	<script type="text/javascript" src="${js}/odash/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"
		src="${js}/odash/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript"
		src="${js}/odash/jquery.backstretch.min.js"></script>
	<script type="text/javascript" src="${misc}/odash/slick/slick.min.js"></script>
	<!-- Slick Carousel -->

	<script>
		var sidebarVisible = false;
		var currentPageID = "#tm-section-1";

		// Setup Carousel
		function setupCarousel() {

			// If current page isn't Carousel page, don't do anything.
			if ($('#tm-section-2').css('display') == "none") {
			} else { // If current page is Carousel page, set up the Carousel.

				var slider = $('.tm-img-slider');
				var windowWidth = $(window).width();

				if (slider.hasClass('slick-initialized')) {
					slider.slick('destroy');
				}

				if (windowWidth < 640) {
					slider.slick({
						dots : true,
						infinite : false,
						slidesToShow : 1,
						slidesToScroll : 1
					});
				} else if (windowWidth < 992) {
					slider.slick({
						dots : true,
						infinite : false,
						slidesToShow : 2,
						slidesToScroll : 1
					});
				} else {
					// Slick carousel
					slider.slick({
						dots : true,
						infinite : false,
						slidesToShow : 3,
						slidesToScroll : 2
					});
				}

				// Init Magnific Popup
				$('.tm-img-slider').magnificPopup({
					delegate : 'a', // child items selector, by clicking on it popup will open
					type : 'image',
					gallery : {
						enabled : true
					}
				// other options
				});
			}
		}

		// Setup Nav
		function setupNav() {
			// Add Event Listener to each Nav item
			$(".tm-main-nav a").click(function(e) {
				e.preventDefault();

				var currentNavItem = $(this);
				changePage(currentNavItem);

				setupCarousel();
				setupFooter();

				// Hide the nav on mobile
				$("#tmSideBar").removeClass("show");
			});
		}

		function changePage(currentNavItem) {
			// Update Nav items
			$(".tm-main-nav a").removeClass("active");
			currentNavItem.addClass("active");

			$(currentPageID).hide();

			// Show current page
			currentPageID = currentNavItem.data("page");
			$(currentPageID).fadeIn(1000);

			// Change background image
			var bgImg = currentNavItem.data("bgImg");
			$.backstretch("${images}/odash/" + bgImg);
		}

		// Setup Nav Toggle Button
		function setupNavToggle() {

			$("#tmMainNavToggle").on("click", function() {
				$(".sidebar").toggleClass("show");
			});
		}

		// If there is enough room, stick the footer at the bottom of page content.
		// If not, place it after the page content
		function setupFooter() {

			var padding = 100;
			var footerPadding = 40;
			var mainContent = $("section" + currentPageID);
			var mainContentHeight = mainContent.outerHeight(true);
			var footer = $(".footer-link");
			var footerHeight = footer.outerHeight(true);
			var totalPageHeight = mainContentHeight + footerHeight
					+ footerPadding + padding;
			var windowHeight = $(window).height();

			if (totalPageHeight > windowHeight) {
				$(".tm-content").css("margin-bottom",
						footerHeight + footerPadding + "px");
				footer.css("bottom", footerHeight + "px");
			} else {
				$(".tm-content").css("margin-bottom", "0");
				footer.css("bottom", "20px");
			}
		}

		// Everything is loaded including images.
		$(window).on(
				"load",
				function() {

					// Render the page on modern browser only.
					if (renderPage) {
						// Remove loader
						$('body').addClass('loaded');

						// Page transition
						var allPages = $(".tm-section");

						// Handle click of "Continue", which changes to next page
						// The link contains data-nav-link attribute, which holds the nav item ID
						// Nav item ID is then used to access and trigger click on the corresponding nav item
						var linkToAnotherPage = $("a.tm-btn[data-nav-link]");

						if (linkToAnotherPage != null) {

							linkToAnotherPage.on("click", function() {
								var navItemToHighlight = linkToAnotherPage
										.data("navLink");
								$("a" + navItemToHighlight).click();
							});
						}

						// Hide all pages
						allPages.hide();

						$("#tm-section-1").fadeIn();

						// Set up background first page
						var bgImg = $("#tmNavLink1").data("bgImg");

						$.backstretch("${images}/odash/" + bgImg, {
							fade : 500
						});

						// Setup Carousel, Nav, and Nav Toggle
						setupCarousel();
						setupNav();
						setupNavToggle();
						setupFooter();

						// Resize Carousel upon window resize
						$(window).resize(function() {
							setupCarousel();
							setupFooter();
						});
					}
				});
	</script>
</body>
</html>

