<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat" %>
    <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>

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
			<a class="nav-link"  href="Admin-Mainpage.jsp">Back</a>
		</li>
	</ul>
	</div>
</nav>
<%@page import="com.dao.CourseDao, com.dao.bean.Course, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1 style="text-align:center">Course Management</h1>


<h6>You can select the day that you want to add the course:</h6>
<form action = "Admin-Courseselectcheck.jsp" method = "post">
        <div class="search-container">
           <form id="searchForm">
            <a  >Search by Day</a>
              <select name="day">
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  name="day" value="Monday">Monday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" name="day" value="Tuesday">Tuesday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" name="day" value="Wednesday">Wednesday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" name="day" value="Thursday">Thursday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" name="day" value="Friday">Friday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" name="day" value="Saturday">Saturday</option>
  <option class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" name="day" value="Sunday">Sunday</option>
 </select>
              <button class="btn btn-outline-secondary btn-lg"style="padding: 0.5px 0.5px 0.5px 0.5px;" type="submit" >Submit</button>
           </form>
        </div>     
</form>

<div>

<h6 id="font">Here are all the courses in our system. </h6>
<% List<Course>list = CourseDao.getAllRecord();
request.setAttribute("list",list);
%>


<table border="1", width="100%">

<p> 
 <tr>
  <th>Course ID</th>
  <th>Course Name</th>
  <th>Course Time</th>
  <th>Coach</th>
  <th>Day</th>
  <th>Delete</th>
  
 </tr>
 <div style="text-align:right">
<a class="btn btn-outline-secondary btn-lg" style="padding: 5px 5px 5px 5px;" href="Admin-Courseadd.jsp">Add course</a>
&nbsp;
<a class="btn btn-outline-secondary btn-lg" style="padding: 5px 5px 5px 5px;" href="Admin-Courseview.jsp">Refresh</a>
</div>


<c:forEach items="${list}" var="u">

 <tr>
  <td>${u.getCourseid()}</td>
  <td>${u.getCoursename()}</td>
  <td>${u.getCoursetime()}</td>
  <td>${u.getCoach()}</td>
  <td>${u.getDay()}</td>
  <td><a class="btn btn-outline-secondary btn-lg" style="padding: 5px 5px 5px 5px;" href="Admin-Coursedelete.jsp?id=${u.getCourseid()}">Delete</a></td>  
 </tr>

</c:forEach>

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