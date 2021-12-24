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
		<li class="nav-item">
			<a class="nav-link"  href="Admin-Feedbacklist.jsp">Back</a>
		</li>
	</ul>
	</div>
</nav>
<%@page import="com.dao.CourseDao, com.dao.bean.Course" %>

<%
String id= request.getParameter("id");
System.out.println(id);
Course c = CourseDao.getRecordById(Integer.parseInt(id));
%>

<h1 style="text-align:center">Edit Form</h1>
<center>

<form id="theform"  action="Admin-Feedbackedit.jsp" method="post">
 <input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  type="hidden" name="courseid" value="<%=c.getCourseid()%>"/>
 <table>
 <tr><td id="reply">Feedback reply</td>
 <td><input class="btn btn-outline-secondary btn-lg"style="padding:100px 100px 100px 100px;"  type="text" name="feedbackreply" value="<%=c.getFeedbackreply()%>"/></td>
 </tr>
 <tr><td colspan="3"><input id="replaybutton" class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" value="Reply feedback "></td></tr>
 </table>
</form>
</center>
<div id="feedbackform">
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