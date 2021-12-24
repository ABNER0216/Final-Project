<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="BSS/css/bootstrap.css" rel="stylesheet">
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
</head>
<body>

<%@page import="com.dao.StudentDao, com.dao.bean.Student, java.util.*,com.service.AdminQuery" %>
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
<a class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" href="Admin-Mainpage.jsp">Back</a>
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
<a class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  href="Admin-Viewstudent.jsp?pagenum=${currentpage}">Refresh</a>
&nbsp;
<a class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  href="Admin-Viewstudent.jsp?pagenum=${previouspage}">Previous Page</ a>
&nbsp;
<a class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  href="Admin-Viewstudent.jsp?pagenum=${nextpage}">Next Page</ a>
</div>


<c:forEach items="${list}" var="s">

 <tr>
  <td>${s.getStudentId()}</td>
  <td>${s.getStudentName()}</td>
  <td>${s.getPassword()}</td>
  <td>${s.getStudentDepartment()}</td>
  <td>${s.getEmail()}</td>
  	<td><a class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  href="Admin-Editform.jsp?id=${s.getStudentId()}">Edit</a></td>
  	<td><a class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;"  href="Admin-Deletestudent.jsp?id=${s.getStudentId()}">Delete</a></td>
  
 </tr>

</c:forEach>

</table>
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