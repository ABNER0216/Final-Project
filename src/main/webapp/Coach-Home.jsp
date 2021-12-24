<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coach Home Page</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/admin.css" rel="stylesheet" type="text/css">
<link href="resources/coach.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<%@page import="com.dao.CoachDao,com.dao.bean.Coach" %>
<%
int coursepage=1;
request.setAttribute("coursepage",coursepage);
String coachid = request.getParameter("coachid");
Coach c = CoachDao.getRecordById(Integer.parseInt(coachid));
%>
<div class="theoverlay"></div>
<nav class="navbar navbar-expand-md">

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<button class="navbar-toggler navbar-dark" type=button data-toggle="collapse" data-target="#main-navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
	
		<li class="nav-item">
			<a class="nav-link" href="HomePage.html">Log Out</a>
		</li>
		<form action="mailto:1909204@xmu.edu.my?subject=subject&message=message" method="post" ><button type="submit"><img id="email" src="resources/images/email.jpg"></button></form>
    
	</ul>
	</div>
</nav>

<div id="coachmain"> 
<div  style="max-width: 18rem;" id="coach-mainpage1" style="background-color:transparent">
<form action="Coach-MyCourse.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input id="cardfont" class="btn btn-outline-secondary btn-lg"style="padding: 70px 70px 70px 70px; font-size:30px; font-weight:bold;" type="submit" name="submit" value="My Course"/>
</form>
</div>

<div  style="max-width: 18rem;" id="coach-mainpage2" style="background-color:transparent">
<form action="Coach-CourseHistory.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input id="cardfont" class="btn btn-outline-secondary btn-lg"style="padding: 70px 70px 70px 70px; font-size:30px;font-weight:bold;" type="submit" name="submit" value="Course History"/>
</form>
</div>

<div  style="max-width: 18rem;" id="coach-mainpage3" style="background-color:transparent">
<form action="Coach-AllCourse.jsp?pagenum=${coursepage}" method="post">
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input id="cardfont" class="btn btn-outline-secondary btn-lg"style="padding: 70px 70px 70px 70px; font-size:30px;font-weight:bold;" type="submit" name="submit" value="All Course"/>
</form>
</div>

<div  style="max-width: 18rem;" id="coach-mainpage4" style="background-color:transparent">
<form action="Coach-PersonalInformation.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input id="cardfont" class="btn btn-outline-secondary btn-lg"style="padding: 70px 70px 70px 70px; font-size:30px;font-weight:bold;" type="submit" name="submit" value="My Information"/>
</form>
</div>

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