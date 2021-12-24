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
String equipmenttype = request.getParameter("equipmenttype");
Student s = StudentDao.getRecordById(studentid);
List<Equipment> thisequip = EquipmentDao.getEquipmentTypeValid(equipmenttype);
request.setAttribute("thisequip",thisequip);
int i = thisequip.size();
if(i<=0)
	response.sendRedirect("Student-BorrowFail.jsp?studentid="+studentid);
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
<header>
<h1 style="text-align:center">Available Equipment</h1>
</header>
<table style="text-align:center" border="1" width="100%">

	<tr>
		<th>Equipment Id</th>
		<th>Equipment Type</th>
		<th>Borrow Equipment</th>
	</tr>

<c:forEach items="${thisequip}" var="a">

	<tr>
		<td>${a.getEquipId()}</td>
		<td>${a.getEquipmentType()}</td>
		<td>
		<form action="Student-BorrowEquip.jsp" method="post">
		<input type="hidden" name="equipid" value="${a.getEquipId()}"/>
		<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="submit" name="submit" value="Borrow"/>
		</form></td>
	</tr>
</c:forEach>
</table>

</body>
</html>