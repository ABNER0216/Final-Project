<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Equipment Management</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/student.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<body style="background-color:#DDDDDD">
<%@page import="com.dao.StudentDao,com.dao.bean.Student,com.dao.PlaceDao,com.dao.bean.Place,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
int studentid = Integer.parseInt(request.getParameter("studentid"));
Student s = StudentDao.getRecordById(studentid);
List<Place> available = PlaceDao.getAllAvailablePlace();
List<Place> rented = PlaceDao.getPlaceByStudent(s);
request.setAttribute("available",available);
request.setAttribute("rented",rented);
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
			<a class="nav-link"  href="HomePage.html">Log Out</a>
		</li>
	</ul>
	</div>
</nav>

<header>
<h1 style="text-align:center">My Place</h1>
</header>
<table style="text-align:center" border="1" width="100%">

	<tr>
		<th>Place Id</th>
		<th>Place Type</th>
		<th>Cancel Appointment</th>
		<th>Start Date</th>
		<th>End Date</th>
	</tr>

<c:forEach items="${rented}" var="r">

	<tr>
		<td>${r.getPlaceId()}</td>
		<td>${r.getPlaceType()}</td>
		<td>
		<form action="Student-CancelAppointment.jsp" method="post">
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="hidden" name="placeid" value="${r.getPlaceId()}"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="submit" name="submit" value="Cancel"/>
		</form></td>
		<td>${r.getStartDate()}</td>
		<td>${r.getEndDate()}</td>
	</tr>
</c:forEach>
</table>
<p></p>

<form action="Student-Home.jsp" method="post">
	<inputclass="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
</form>

<header>
<h1 style="text-align:center">Available Place</h1>
</header>
<table style="text-align:center" border="1" width="100%">

	<tr>
		<th>Place Id</th>
		<th>Place Type</th>
		<th>Rent Place</th>
	</tr>

<c:forEach items="${available}" var="a">

	<tr>
		<td>${a.getPlaceId()}</td>
		<td>${a.getPlaceType()}</td>
		<td>
		<form action="Student-RentPlace.jsp" method="post">
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="hidden" name="placeid" value="${a.getPlaceId()}"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="submit" name="submit" value="Rent"/>
		</form></td>
	</tr>
</c:forEach>
</table>
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