<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All course in XMUM (Student not choose)</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/student.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<% 
int theStudentId = Integer.parseInt(request.getParameter("studentid"));
Student s=StudentDao.getRecordById(theStudentId);

Student theStudent = StudentDao.getMyCourse(theStudentId);
List<Course>list = CourseDao.getStudentCanChoose(theStudent);
request.setAttribute("list",list);
%>
<body style="background-color:#DDDDDD">
<nav class="navbar navbar-expand-md" >

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" href="Student-Home.jsp?studentid=<%=theStudentId%>">Home</a>
		</li>
		<li class="nav-item">
			<a class="nav-link"  href="Student-AddCourse.jsp?studentid=<%=theStudentId%>">Back</a>
		</li>
	</ul>
	</div>
</nav>
<%@page import="com.dao.CourseDao,com.dao.StudentDao,com.dao.bean.Student,com.dao.bean.Course,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
<h1 style="text-align:center">Course List</h1>
</header>

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
		<form action="Student-AddNewCourseDetail.jsp" method="post">
		<input type="hidden" name="courseid" value="${u.getCourseid()}"/>
		<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="submit" name="submit" value="view"/>
		</form></td>
		</tr>
</c:forEach>
</table>
<p></p>
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