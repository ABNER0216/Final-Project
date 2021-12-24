<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Personal information</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/coach.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
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
<%@page import="com.dao.CoachDao, com.dao.bean.Coach" %>

<%
String coachid= request.getParameter("coachid");
Coach o =CoachDao.getRecordById(Integer.parseInt(coachid));
%>

<h1 style="text-align:center">Edit Form</h1>
<form action="Coach-Edit.jsp" method="post">
 <input class="form_input"type="hidden" name="coachid" value="<%=o.getCoachid()%>"/>
 <center>
	<table border="0" cellspacing="10px" cellpadding="20px">
 	<tr><td>Email:</td>
 	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" class="form_input" type="email" name="email" value="<%=o.getEmail()%>"/></td>
 	</tr>
 	<tr><td>Name:</td>
 	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" class="form_input" type="text" name="name" value="<%=o.getName()%>"/></td>
 	</tr>
 	<tr><td>Password:</td>
 	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" type="password" name="password" value="<%=o.getPassword()%>"/></td>
 	</tr>
 	<tr><td>Personal Profile:</td>
 	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" type="text" name="coachinfo" value="<%=o.getCoachinfo()%>"/></td>
 	</tr>
 	<tr><td>Age:</td>
 	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" type="age" name="coachage" value="<%=o.getCoachage()%>"/></td>
 	</tr>
 	<tr height="60px"><td>Gender:</td>
	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" type="radio" name="coachgender" value="Male"/>Male
	<input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" type="radio" name="coachgender" value="Female"/>Female</td>
	</tr>
	 <tr><td colspan="3"><input class="btn btn-outline-secondary btn-lg" style="padding: 5px 5px 5px 5px;" id="button1" type="submit" value="Edit Student"></td></tr>
 	</table>
 </center>
</form>
<form action="Coach-PersonalInformation.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=o.getCoachid()%>"/>
	<input class="btn btn-outline-secondary btn-lg" style="padding: 5px 5px 5px 5px;" id="button2" type="submit" name="submit" value="Return Information"/>
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