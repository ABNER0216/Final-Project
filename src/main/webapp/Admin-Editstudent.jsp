<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.dao.StudentDao,com.dao.bean.Student" %>
<%
String id= request.getParameter("studentid");
Student u = StudentDao.getRecordById(Integer.parseInt(id));
String name = request.getParameter("studentname");
String password = request.getParameter("studentpassword");
String department = request.getParameter("studentdepartment");
String email = request.getParameter("studentemail");
int i=StudentDao.updateStudent(u, name, password, department, email);
response.sendRedirect("Admin-EditSuccess.jsp");
%>
</body>
</html>