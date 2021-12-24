<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All course in XMUM</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/student.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
<link href="resources/coach.css" rel="stylesheet" type="text/css">
</head>
<%@page import="com.dao.CourseDao,com.dao.StudentDao,com.dao.bean.Student,com.dao.bean.Course,java.util.*,com.service.StudentQuery" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
int studentid = Integer.parseInt(request.getParameter("studentid"));
Student s = StudentDao.getRecordById(studentid);
%>
<% 
int thispage = Integer.parseInt(request.getParameter("pagenum"))-1;
int totalpage = StudentQuery.getCoursePagenum();
int currentpage = thispage+1;
int nextpage = thispage+2;
if(thispage < totalpage&&thispage>=0){
List<Course>list = StudentQuery.getCourses(thispage);
request.setAttribute("list",list);
}
else{
 out.println("No data here!");
}

request.setAttribute("nextpage",nextpage);
request.setAttribute("currentpage",currentpage);
request.setAttribute("previouspage",thispage);
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
			<a class="nav-link"  href="HomePage.html">Log Out</a>
		</li>
		</ul>
		</div>
</nav>

<header>
<h1 style="text-align:center">Course List</h1>
</header>

<table style="text-align:center" border="1" width="100%">

	<tr>
		<th>Course Id</th>
		<th>Course Name</th>
		<th>Course Time</th>
		<th>Course Coach</th>
		<th>View Detail</th>
	</tr>

<form action="Student-Course.jsp?pagenum=${previouspage}" method="post">
		<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input id="previous" class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Previous Page"/>
</form></td>
&nbsp;
<form action="Student-Course.jsp?pagenum=${nextpage}" method="post">
		<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input id="next" class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Next Page"/>
</form></td>

<p></p>

<c:forEach items="${list}" var="u">

	<tr>
		<td>${u.getCourseid()}</td>
		<td>${u.getCoursename()}</td>
		<td>${u.getCoursetime()}</td>
		<td>${u.getCoach()}</td>
		<td>
		<form action="Student-CourseDetail.jsp" method="post">
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="hidden" name="courseid" value="${u.getCourseid()}"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"type="submit" name="submit" value="view"/>
		</form></td>
		</tr>
</c:forEach>
</table>
<p></p>
<div id="page" style="text-align:center">
  <dd><%=thispage+1%></dd>
 </div>

</body>
</html>