<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/admin.css" rel="stylesheet" type="text/css">
<link href="resources/student.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<div class="theoverlay"></div>
<body  style="background-color:#DDDDDD">
<nav class="navbar navbar-expand-md" >

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<button class="navbar-toggler navbar-dark" type=button data-toggle="collapse" data-target="#main-navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link"  href="HomePage.html">Log out</a>
		</li>
	</ul>
	</div>
</nav>
<%@page import="com.dao.StudentDao,com.dao.bean.Student" %>
<%
int coursepage=1;
request.setAttribute("coursepage",coursepage);
String studentid = request.getParameter("studentid");
Student s = StudentDao.getRecordById(Integer.parseInt(studentid));
%>
<div id="studentmain">
<div  style="max-width: 18rem;" id="student-mainpage1" style="background-color:transparent">
<form action="Student-MyCourse.jsp" method="post">
	<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
	<input id="cardfont" class="btn btn-outline-secondary btn-lg"style="padding: 50px 50px 50px 50px;font-size:30px;font-weight:bold;"  type="submit" name="submit" value="My Course"/>
</form>
</div>

<div  style="max-width: 18rem;" id="student-mainpage2" style="background-color:transparent">
<form action="Student-Course.jsp?pagenum=${coursepage}" method="post">
	<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
	<input  id="cardfont" class="btn btn-outline-secondary btn-lg"style="padding: 50px 50px 50px 50px;font-size:30px;font-weight:bold;"  type="submit" name="submit" value="All Course"/>
</form>
</div>

<div  style="max-width: 18rem;" id="student-mainpage3" style="background-color:transparent">
<form action="Student-AddCourse.jsp" method="post">
	<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
	<input id="cardfont" class="btn btn-outline-secondary btn-lg"style="padding: 50px 50px 50px 50px;font-size:30px;font-weight:bold;" type="submit" name="submit" value="Add Course"/>
</form>
</div>


<div  style="max-width: 18rem;" id="student-mainpage4" style="background-color:transparent">
<form action="Student-Equip.jsp" method="post">
	<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
	<input id="cardfont" class="btn btn-outline-secondary btn-lg"style="padding: 50px 50px 50px 50px;font-size:30px;font-weight:bold;"  type="submit" name="submit" value="Equipment"/>
</form>
</div>


<div  style="max-width: 18rem;" id="student-mainpage5" style="background-color:transparent">
<form action="Student-Place.jsp" method="post">
	<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
	<input id="cardfont" class="btn btn-outline-secondary btn-lg"style="padding: 50px 50px 50px 50px;font-size:30px;font-weight:bold;"  type="submit" name="submit" value="Rent Place"/>
</form>
</div>

<div  style="max-width: 18rem;" id="student-mainpage6" style="background-color:transparent">
<form action="Student-ViewHistoryCourse.jsp" method="post">
	<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
	<input id="cardfont" class="btn btn-outline-secondary btn-lg"style="padding: 50px 50px 50px 50px;font-size:30px;font-weight:bold;"  type="submit" name="submit" value="History Course"/>
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