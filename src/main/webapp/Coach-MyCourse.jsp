<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Timetable(To be attend)</title>
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
			<a class="nav-link"  href="Admin-Mainpage.jsp">Log Out</a>
		</li>
	</ul>
	</div>
</nav>
<%@page import="com.dao.CourseDao,com.dao.CoachDao,com.dao.bean.Coach,com.dao.bean.Course,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
<h1 style="text-align:center">Timetable</h1>
</header>

<% 
int coachid = Integer.parseInt(request.getParameter("coachid"));
Coach c = CoachDao.getRecordById(coachid);

String theCoach=CoachDao.getTheCoach(coachid);
List<Course>list = CourseDao.getMyCourse(theCoach);
request.setAttribute("list",list);
int theCourseId=CourseDao.getTheCourseId(theCoach);%>


<div id="coachbody">
<table border="1" width="100%">

	<tr>
		<th>Course Id</th>
		<th>Course Name</th>
		<th>Course Time</th>
		<th>Course Coach</th>
		<th>View Detail</th>
	</tr>

<c:forEach items="${list}" var="u">

	<tr>
		<td>${u.getCourseid()}</td>
		<td>${u.getCoursename()}</td>
		<td>${u.getCoursetime()}</td>
		<td>${u.getCoach()}</td>
		<td>
		<form action="Coach-MyCourseDetail.jsp" method="post">
		<input type="hidden" name="courseid" value="${u.getCourseid()}"/>
		<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="view"/>
		</form></td>
		</tr>
</c:forEach>
</table>
<p></p>
<form action="Coach-Home.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input class="btn btn-outline-secondary btn-lg" style="padding: 5px 5px 5px 5px;" id="return" type="submit" name="submit" value="Return Home"/>
</form>
</div>

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