<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Detail(To be attend)</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/student.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<body  style="background-color:#DDDDDD">
<%@page import="com.dao.StudentDao,com.dao.bean.Student,com.dao.CourseDao,com.dao.bean.Course" %>
<%
int courseid = Integer.parseInt(request.getParameter("courseid"));
Course o = CourseDao.getRecordById(courseid);

int studentid = Integer.parseInt(request.getParameter("studentid"));
Student s = StudentDao.getRecordById(studentid);
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
			<a class="nav-link"  href="Student-ViewHistoryCourse.jsp?studentid=<%=studentid%>">Back</a>
		</li>
	</ul>
	</div>
</nav>

<header>
<h1 style="text-align:center">Course Detail</h1>
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


<footer id="footer" class="page-footer">
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