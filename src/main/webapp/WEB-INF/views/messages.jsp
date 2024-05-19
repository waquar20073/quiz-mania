<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="${css}/messages/style.css">
<title>Messages</title>
</head>

<body>
 <div class="demo">
        <div class="container">
            <div class="row text-center">
                <h1 class="heading-title">Messages For You ${message}</h1>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="main-timeline">
                        <div class="timeline">
                            <div class="timeline-content">
                                <span class="date">
                                    <span class="day">10<sup>th</sup></span>
                                    <span class="month">Apr</span>
                                    <span class="year">2017</span>
                                </span>
                                <h2 class="title">Web Design</h2>
                                <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus, quam non pellentesque consequat, massa justo elementum nunc, ac efficitur tortor nunc sit amet dolor.</p>
                            </div>
                        </div>

                        <div class="timeline">
                            <div class="timeline-content">
                                <span class="date">
                                    <span class="day">12<sup>th</sup></span>
                                    <span class="month">Apr</span>
                                    <span class="year">2017</span>
                                </span>
                                <h2 class="title">Web Development</h2>
                                <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus, quam non pellentesque consequat, massa justo elementum nunc, ac efficitur tortor nunc sit amet dolor.</p>
                            </div>
                        </div>

                        <div class="timeline">
                            <div class="timeline-content">
                                <span class="date">
                                    <span class="day">14<sup>th</sup></span>
                                    <span class="month">Apr</span>
                                    <span class="year">2017</span>
                                </span>
                                <h2 class="title">Brand Building</h2>
                                <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus, quam non pellentesque consequat, massa justo elementum nunc, ac efficitur tortor nunc sit amet dolor.</p>
                            </div>
                        </div>

                        <div class="timeline">
                            <div class="timeline-content">
                                <span class="date">
                                    <span class="day">16<sup>th</sup></span>
                                    <span class="month">Apr</span>
                                    <span class="year">2017</span>
                                </span>
                                <h2 class="title">Responsive Design</h2>
                                <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus, quam non pellentesque consequat, massa justo elementum nunc, ac efficitur tortor nunc sit amet dolor.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
