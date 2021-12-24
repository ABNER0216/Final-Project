<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/student.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>

<%@page import="com.dao.StudentDao,com.dao.bean.Student,com.dao.EquipmentDao,com.dao.bean.Equipment,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
int studentid = Integer.parseInt(request.getParameter("studentid"));
int equipid = Integer.parseInt(request.getParameter("equipid"));
Student s = StudentDao.getRecordById(studentid);
Equipment eq = EquipmentDao.getRecordById(equipid);
%>
<body style="background-color:#DDDDDD">
<nav class="navbar navbar-expand-md" >

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" href="Student-Home.jsp?studentid=<%=studentid%>">Home</a>
		</li>
		<li class="nav-item">
			<a class="nav-link"  href="Student-BorrowPage.jsp?studentid=<%=studentid%>">Back</a>
		</li>
	</ul>
	</div>
</nav>
<h1 style="text-align:center">Choose Time</h1>
<div id="theequip">
<form action="Student-BorrowSuccess.jsp" method="post">
 <input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
 <input type="hidden" name="equipid" value="<%=eq.getEquipId()%>"/>
 <table>
 
 <tr><td>StartDate:</td>
 <td><input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="date" name="BorrowDate" value="<%=eq.getBorrowDate()%>"/></td>
 </tr>
 <tr><td>EndDate:</td>   
 <td><input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="date" name="ReturnDate" value="<%=eq.getReturnDate()%>"/></td>
 </tr>
 
 <tr><td colspan="3"><input id="equipmentbutton" class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="submit" value="Submit"></td></tr>
 </table>
</form>
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