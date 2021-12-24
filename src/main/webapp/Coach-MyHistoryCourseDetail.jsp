<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My courses detail(Attend)</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/coach.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<body style="background-color:#DDDDDD">
<nav class="navbar navbar-expand-md" >

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<button class="navbar-toggler navbar-dark" type=button data-toggle="collapse" data-target="#main-navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link"  href="HomePage.html">Log Out</a>
		</li>
	</ul>
	</div>
</nav>

<%@page import="com.dao.CoachDao,com.dao.bean.Coach,com.dao.CourseDao,com.dao.bean.Course" %>
<%
int courseid = Integer.parseInt(request.getParameter("courseid"));
Course o = CourseDao.getRecordById(courseid);

int coachid = Integer.parseInt(request.getParameter("coachid"));
Coach c = CoachDao.getRecordById(coachid);

%>

<header>
<h1 style="text-align:center">Course Detail</h1>
</header>
<div id="detailbody">
    <dl>
        <dt>&ensp;Course Id</dt>
        <dd><%=o.getCourseid() %></dd>
        <dt>&ensp;Course Name</dt>
        <dd><%=o.getCoursename() %></dd>
        <dt>&ensp;Course Time</dt>
        <dd><%=o.getCoursetime() %></dd>
        <dt>&ensp;Coach</dt>
        <dd><%=o.getCoach() %></dd>
        <dt>&ensp;Course Information</dt>
        <dd><%=o.getCourseinfo() %></dd>
        <dt>&ensp;Course State</dt>
        <dd><%=o.getAttendance() %></dd>
        <dt>&ensp;Course Feedback</dt>
        <dd><%=o.getFeedback() %></dd>
    </dl>
<p></p>
</div>
<form action="Coach-CourseHistory.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input id="detailbutton" class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Return List"/>
</form>
<footer class="page-footer">
	<div class="container">
	<div class="row">
		<div class="col-lg-8 col-md-8 col-sm-12">
			<h5 class="text-uppercase font-weight-bold">Extra Information</h5>		
			 <p>We chat:</p>
   			 <p> Qingchunfeiyang </p>
  			 <p>Instragram:   </p>
  			 <p>Xmum_PE_SWE306</p>	
		</div>
		<div class="col-lg-4 col-md-4 col-sm-12">
			<h5 class="text-uppercase font-weight-bold">Contact</h5>	
			<p>Xiamen University Malaysia, XMUM</p>
			<p>https://linc.xmu.edu.my</p>
			<p>xmum@edu.my</p>
			<p>+601234567</p>	
		</div>
		</div>
		</div>
	<div class="footer-copyright text-center">@ 2021 Copyright: XMUM</div>
</footer>
</body>
</html>