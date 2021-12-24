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
<%@page import="com.dao.StudentDao,com.dao.bean.Student,com.dao.EquipmentDao,com.dao.bean.Equipment,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
int studentid = Integer.parseInt(request.getParameter("studentid"));
Student s = StudentDao.getRecordById(studentid);
List<Equipment> available = EquipmentDao.getAllAvailableEquipment();
List<Equipment> borrowed = EquipmentDao.getEquipmentByStudent(s);
List<Equipment> basketball = EquipmentDao.getEquipmentTypeValid("Basketball");
List<Equipment> football = EquipmentDao.getEquipmentTypeValid("Football");
List<Equipment> tennis = EquipmentDao.getEquipmentTypeValid("Tennis");
List<Equipment> dumbbell = EquipmentDao.getEquipmentTypeValid("Dumbbell");
List<Equipment> skippingrope = EquipmentDao.getEquipmentTypeValid("Skippingrope");
List<Equipment> yogamat = EquipmentDao.getEquipmentTypeValid("Yogamat");
List<Equipment> boxinggloves = EquipmentDao.getEquipmentTypeValid("Boxinggloves");
request.setAttribute("available",available);
request.setAttribute("borrowed",borrowed);
int basketballnum = basketball.size();
int footballnum = football.size();
int tennisnum = tennis.size();
int dumbbellnum = dumbbell.size();
int ropenum = skippingrope.size();
int matnum = yogamat.size();
int glovesnum = boxinggloves.size();
request.setAttribute("basketballnum",basketballnum);
request.setAttribute("footballnum",footballnum);
request.setAttribute("tennisnum",tennisnum);
request.setAttribute("dumbbellnum",dumbbellnum);
request.setAttribute("ropenum",ropenum);
request.setAttribute("matnum",matnum);
request.setAttribute("glovesnum",glovesnum);
%>
<nav class="navbar navbar-expand-md" >

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
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
<h1 style="text-align:center">My Equipment</h1>
</header>
<table style="text-align:center" border="1" width="100%">

	<tr>
		<th>Equipment Id</th>
		<th>Equipment Type</th>
		<th>Return Equipment</th>
		<th>Start Date</th>
		<th>End Date</th>
	</tr>

<c:forEach items="${borrowed}" var="u">

	<tr>
		<td>${u.getEquipId()}</td>
		<td>${u.getEquipmentType()}</td>
		<td>
		<form action="Student-ReturnEquip.jsp" method="post">
		<input type="hidden" name="equipid" value="${u.getEquipId()}"/>
		<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="submit" name="submit" value="Return"/>
		</form></td>
		<td>${u.getBorrowDate()}</td>
		<td>${u.getReturnDate()}</td>
	</tr>
</c:forEach>
</table>
<p></p>

<header>
<h1 style="text-align:center">Available Equipment</h1>
</header>
<div id="tablebody">
<table id="available" border="1" width="40%">

	<tr>
		<th>Equipment Type</th>
		<th>Equipment Number</th>
		<th>Equipment Picture</th>
		<th>Borrow</th>
	</tr>
	<tr>
		<td>Basketball</td>
		<td>${basketballnum}</td>
		<td><img src="resources/images/basketball.jpg" height="3%" width="20%"></td>
		<td>
		<form action="Student-BorrowPage.jsp" method="post">
		<input type="hidden" name="equipmenttype" value="Basketball"/>
		<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Borrow"/>
		</form></td>
	</tr>
	<tr>
		<td>Football</td>
		<td>${footballnum}</td>
		<td><img src="resources/images/football.jpg" height="10%" width="20%"></td>
		<td><form action="Student-BorrowPage.jsp" method="post">
		<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input type="hidden" name="equipmenttype" value="Football"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Borrow"/>
		</form></td>
	</tr>
	<tr>
		<td>Tennis</td>
		<td>${tennisnum}</td>
		<td><img src="resources/images/tennis.jpg" height="3%" width="20%"></td>
		<td><form action="Student-BorrowPage.jsp" method="post">
		<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input type="hidden" name="equipmenttype" value="Tennis"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Borrow"/>
		</form></td>
	</tr>
	<tr>
		<td>Dumbbell</td>
		<td>${dumbbellnum}</td>
		<td><img src="resources/images/dumbbell.jpg" height="3%" width="20%"></td>
		<td>
		<form action="Student-BorrowPage.jsp" method="post">
			<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
			<input type="hidden" name="equipmenttype" value="Dumbbell"/>
			<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Borrow"/>
		</form>
		</td>
	</tr>
	<tr>
		<td>Yoga mat</td>
		<td>${matnum}</td>
		<td><img src="resources/images/yogamat.jpg" height="3%" width="20%"></td>
		<td><form action="Student-BorrowPage.jsp" method="post">
		<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input type="hidden" name="equipmenttype" value="Yoga mat"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Borrow"/>
		</form></td>
	</tr>
	<tr>
		<td>Boxing gloves</td>
		<td>${glovesnum}</td>
		<td><img src="resources/images/boxinggloves.jpg" height="3%" width="20%"></td>
		<td><form action="Student-BorrowPage.jsp" method="post">
		<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input type="hidden" name="equipmenttype" value="Boxing gloves"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Borrow"/>
		</form></td>
	</tr>
</table>
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