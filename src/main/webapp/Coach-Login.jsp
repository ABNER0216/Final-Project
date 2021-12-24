<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coach Login Page</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="overlay"></div>
<nav class="navbar navbar-expand-md">

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<button class="navbar-toggler navbar-dark" type=button data-toggle="collapse" data-target="#main-navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" href="HomePage.html">Back</a>
		</li>
	</ul>
	</div>
</nav>

<h2>XMUM Fitness Management System</h2>
<h4>[Coach]</h4>

<form id="coachlogin" action="Coach-LoginCheck.jsp" method="post">

	<table id="coachlogin-table">
	<tr>
	<td><label for="email">Username: </label></td>
	</tr>
	<tr>
	<td><input type="email" name="email" placeholder="Username"></td>
	</tr>
	
	<tr>
	<td><label for="password">Password: </label></td>
	</tr>
	<tr>
	<td><input type="password" name="password" placeholder="Password"></td>
	</tr>
	</table>
	<br/>
	
	<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" id="submit" type="submit" value="Login">
	
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
<script src="main.js"></script>
<script src="BSS/js/bootstrap.min.js"></script>
</body>
</html>