<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>The Course Student Choose(To be attend)</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/student.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<body style="background-color:#DDDDDD">
<%@page import="com.dao.CourseDao,com.dao.StudentDao,com.dao.bean.Student,com.dao.bean.Course,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
int studentid = Integer.parseInt(request.getParameter("studentid"));
Student s = StudentDao.getRecordById(studentid);

List<Course>list = CourseDao.getHistoryCourse(s);
request.setAttribute("list",list);
%>

<nav class="navbar navbar-expand-md" >

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<button class="navbar-toggler navbar-dark" type=button data-toggle="collapse" data-target="#main-navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" href="Student-Home.jsp?studentid=<%=studentid%>">Home</a>
		</li>
		<li class="nav-item">
			<a class="nav-link"  href="Student-Login.jsp">Log out</a>
		</li>
	</ul>
	</div>
</nav>
<header>
<h1 style="text-align:center">Timetable</h1>
</header>
<table style="text-align:center" border="1" width="100%">

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
		<form action="Student-MyHistoryCourseDetail.jsp" method="post">
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="hidden" name="courseid" value="${u.getCourseid()}"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="submit" name="submit" value="view"/>
		</form></td>
		</tr>
</c:forEach>
</table>
<p></p>

</body>
</html>