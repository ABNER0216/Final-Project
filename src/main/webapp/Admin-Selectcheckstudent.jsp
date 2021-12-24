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
<%int studentpage=1;
request.setAttribute("studentpage",studentpage);
%>
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
			<a class="nav-link"  href="Admin-Viewstudent.jsp?pagenum=${studentpage}">Back</a>
		</li>
	</ul>
	</div>
</nav>
<%@page import="com.dao.StudentDao, com.dao.bean.Student, java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String search =request.getParameter("search");
Student s = StudentDao.getRecordByName(search);

if(s.getStudentName()==null)
{
	response.sendRedirect("Admin-Selectfail.jsp");
}
%>
<h1 style="text-align:center">Student Management</h1>
<table border="1", width="100%">
<p>

<form action = "Admin-Selectcheckstudent.jsp" method = "post">
        <div class="search-container">
           <form id="searchForm">
            <a>Search by Name</a>
              <input type="text" placeholder="search" name="search">
              <button class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  type="submit" >Submit</button>
           </form>
        </div>     
</form>
    
 <tr>
  <th>Student ID</th>
  <th>Name</th>
  <th>Password</th>
  <th>Department</th>
   <th>E-mail</th>
   
   
  
 </tr>
 <div style="text-align:right">
<a class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  href="Admin-AddStudent.jsp">Add Student</a>
&nbsp;
<a class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  href="Admin-Viewstudent.jsp?pagenum=${studentpage}">Refresh</a>
</div>

	<tr>
		<td><%=s.getStudentId()%></td>
  		<td><%=s.getStudentName()%></td>
  		<td><%=s.getPassword()%></td>
  		<td><%=s.getStudentDepartment()%></td>
  		<td><%=s.getEmail()%></td>
  		 
   <input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  type="hidden" name="id" value="<%=s.getStudentId()%>"/>
    <td><form action="Admin-Editform.jsp" method="post">
   <input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  type="hidden" name="id" value="<%=s.getStudentId()%>"/>
   <input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  type="submit"name="submit"value="Edit"/>
  </form></td>
    <td><form action="Admin-Deletestudent.jsp" method="post">
   <input class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  type="hidden" name="id" value="<%=s.getStudentId()%>"/>
   <input  class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" type="submit"name="submit"value="Delete"/>
  </form></td>
	</tr>

</table>
<p></p >
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