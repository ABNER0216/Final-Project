<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-md" >

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<button class="navbar-toggler navbar-dark" type=button data-toggle="collapse" data-target="#main-navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" href="Admin-Mainpage.jsp">Home</a>
		</li>
		<li class="nav-item">
			<a class="nav-link"  href="Admin-Courseview.jsp">Back</a>
		</li>
	</ul>
	</div>
</nav>
<h1 style="text-align:center">Add new course</h1>
<form action="Admin-Courseaddcheck.jsp" method="post">
<center>
	<table border="0" cellspacing="10px" cellpadding="10px" >
	<tr>
	<td>Course Name:</td>
	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="text" name="coursename"></td>
	</tr>
	<tr>
	<td>Course Id:</td>
	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="text" name="courseid"></td>
	</tr>
	<tr>
	<td>Date:</td>
	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="text" name="coursetime"></td>
	</tr>
	<tr>
	<td>Coach:</td>
	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="text" name="coach"></td>
	</tr>
	<tr>
	<td>Course Information:</td>
	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 50px 50px 50px 50px;" type="text" name="courseinfo"></td>
	</tr>
	<tr>
	<td>Day:</td>
	<td>
	 <select name="day">
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" >Monday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" >Tuesday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" >Wednesday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" >Thursday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" >Friday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" >Saturday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" >Sunday</option>
 </select></td>
	</tr>
	<tr><td><input id="addbutton" class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" value ="Add course"></td></tr>
	</table>
	</center>
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