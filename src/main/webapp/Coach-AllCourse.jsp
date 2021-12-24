<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View all sports courses in the school</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/coach.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<body style="background-color:#DDDDDD">
<%@page import="com.dao.CourseDao,com.dao.CoachDao,com.dao.bean.Coach,com.dao.bean.Course,java.util.*,com.service.CoachQuery" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
int coachid = Integer.parseInt(request.getParameter("coachid"));
Coach c = CoachDao.getRecordById(coachid);

String theCoach=CoachDao.getTheCoach(coachid);
%>
<% 
int thispage = Integer.parseInt(request.getParameter("pagenum"))-1;
int totalpage = CoachQuery.getCoursePagenum();
int currentpage = thispage+1;
int nextpage = thispage+2;
if(thispage < totalpage&&thispage>=0){
List<Course>list = CoachQuery.getCourses(thispage);
request.setAttribute("list",list);
}
else{
 out.println("No data here!");
}

request.setAttribute("nextpage",nextpage);
request.setAttribute("currentpage",currentpage);
request.setAttribute("previouspage",thispage);
%>
<nav class="navbar navbar-expand-md" >

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<button class="navbar-toggler navbar-dark" type=button data-toggle="collapse" data-target="#main-navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
	<li class="nav-item">
	<a class="nav-link"  href="Coach-Home.jsp?coachid=<%=c.getCoachid()%>">Back</a>
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


<div id="allcoursebody">
<table border="1" width="100%">

	<tr>
		<th>Course Id</th>
		<th>Course Name</th>
		<th>Course Time</th>
		<th>Course Coach</th>
		<th>Course state</th>
		<th>View Detail</th>
	</tr>

<form action="Coach-AllCourse.jsp?pagenum=${previouspage}" method="post">
		<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
		<input id="previous" class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Previous Page"/>
</form></td>
&nbsp;
<form action="Coach-AllCourse.jsp?pagenum=${nextpage}" method="post">
		<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
		<input id="next" class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="Next Page"/>
</form></td>

<p></p>

<c:forEach items="${list}" var="u">

	<tr>
		<td>${u.getCourseid()}</td>
		<td>${u.getCoursename()}</td>
		<td>${u.getCoursetime()}</td>
		<td>${u.getCoach()}</td>
		<td>${u.getAttendance()}</td>
		<td>
		<form action="Coach-CourseDetail.jsp" method="post">
		<input type="hidden" name="courseid" value="${u.getCourseid()}"/>
		<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
		<input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit" name="submit" value="view"/>
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