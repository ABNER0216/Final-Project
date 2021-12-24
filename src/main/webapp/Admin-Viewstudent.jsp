<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/admin.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
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
			<a class="nav-link"  href="Admin-Mainpage.jsp">Back</a>
		</li>
	</ul>
	</div>
</nav>

<%@page import="com.dao.StudentDao, com.dao.bean.Student, java.util.*, com.service.AdminQuery" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1 style="text-align:center">Student Management</h1>
<% 
int thispage = Integer.parseInt(request.getParameter("pagenum"))-1;
int totalpage = AdminQuery.getStudentPagenum();
int currentpage = thispage+1;
int nextpage = thispage+2;
if(thispage < totalpage&&thispage>=0){
 List<Student>list = AdminQuery.getStudents(thispage);
 request.setAttribute("list",list);
}
else{
 out.println("No data here!");
}

request.setAttribute("nextpage",nextpage);
request.setAttribute("currentpage",currentpage);
request.setAttribute("previouspage",thispage);
%>
     
</form>
    
<table border="1", width="100%">
<p>
<form action = "Admin-Selectcheckstudent.jsp" method = "post">
        <div class="search-container">
           <form id="searchForm">
            <a>Search by Name</a>
              <input type="text" placeholder="search" name="search">
              <button type="submit"class="btn btn-outline-secondary btn-lg"style="padding: 0.5px  0.5px  0.5px  0.5px;" >Submit</button>
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
<a class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  href="Admin-Addstudentform.jsp">Add Student</a>
&nbsp;
<a class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  href="Admin-Viewstudent.jsp?pagenum=${currentpage}">Refresh</a>
&nbsp;
</div>

<a id="previous" class="btn btn-outline-secondary btn-lg" style="padding: 5px 5px 5px 5px;"  href="Admin-Viewstudent.jsp?pagenum=${previouspage}">Previous Page</a>
&nbsp;
<a id="next" class="btn btn-outline-secondary btn-lg" style="padding: 5px 5px 5px 5px;"  href="Admin-Viewstudent.jsp?pagenum=${nextpage}">Next Page</a>

<p></p>

<c:forEach items="${list}" var="s">

 <tr>
  <td>${s.getStudentId()}</td>
  <td>${s.getStudentName()}</td>
  <td>${s.getPassword()}</td>
  <td>${s.getStudentDepartment()}</td>
  <td>${s.getEmail()}</td>
  	<td><a class="btn btn-outline-secondary btn-lg"style="padding: 1px 1px 1px 1px;" href="Admin-Editform.jsp?id=${s.getStudentId()}">Edit</a></td>
  	<td><a class="btn btn-outline-secondary btn-lg"style="padding: 1px 1px 1px 1px;" href="Admin-Deletestudent.jsp?id=${s.getStudentId()}">Delete</a></td>
  
 </tr>

</c:forEach>

</table>
 <div id="page" style="text-align:center">
  <dd><%=thispage+1%></dd>
  </div>
<script src="main.js"></script>
<script src="BSS/js/bootstrap.min.js"></script>
</body>
</html>