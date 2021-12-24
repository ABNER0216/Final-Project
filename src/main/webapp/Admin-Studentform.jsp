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
<%int studentpage=1;
request.setAttribute("studentpage",studentpage); %>
<body style="background-color:#DDDDDD">
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
		
	</ul>
	</div>
</nav>
<p></p>
<p></p>
<p></p>
<p></p>
<h1 style="text-align:center">Add new student</h1>
<form action="Admin-AddStudent.jsp" method="post">
	<center>
	<table border="0" cellspacing="10px" cellpadding="20px">
	<tr>
	<td>Name:</td>
	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" type="text" name="studentname"></td>
	</tr>
	<tr>
	<td>Password:</td>
	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" type="password" name="studentpassword"></td>
	</tr>
	<tr>
	<td>Email:</td>
	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" type="email" name="studentemail"></td>
	</tr>
	<tr>
	<td>Department:</td>
	<td><input class="btn btn-outline-secondary btn-lg"style="padding: 3px 3px 3px 3px;" type="text" name="studentdepartment"></td>
	</tr>
	<tr>
	<td><a  class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"href ="Admin-Viewstudent.jsp?pagenum=${studentpage}">view all</a></td>
	<td><input id="addstudentbutton" class="btn btn-outline-secondary btn-lg" style="padding: 5px 5px 5px 5px;" type="submit" value ="Add student"></td></tr>
	</table>
	</center>>
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