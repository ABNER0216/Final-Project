<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course detail(To be attend)</title>
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
<%@page import="com.dao.CoachDao,com.dao.bean.Coach,com.dao.CourseDao,com.dao.bean.Course" %>
<%
int courseid = Integer.parseInt(request.getParameter("courseid"));
Course o = CourseDao.getRecordById(courseid);

int coachid = Integer.parseInt(request.getParameter("coachid"));
Coach c = CoachDao.getRecordById(coachid);

%>

<header>
<h1 style="text-align:center">My Course Detail</h1>
</header>

<div id="detailbody">
    <dl>
        <dt>Course Id</dt>
        <dd><%=o.getCourseid() %></dd>
        <dt>Course Name</dt>
        <dd><%=o.getCoursename() %></dd>
        <dt>Course Time</dt>
        <dd><%=o.getCoursetime() %></dd>
        <dt>Coach</dt>
        <dd><%=o.getCoach() %></dd>
        <dt>Course Information</dt>
        <dd><%=o.getCourseinfo() %></dd>
        
    </dl>
<p></p>
</div>
<form action="CourseFeedback.jsp" method="post">
	<input type="hidden" name="courseid" value="<%=o.getCourseid()%>"/>
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Attend"/>
</form>

<form action="MyCourse.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Return List"/>
</form>


</body>
</html>