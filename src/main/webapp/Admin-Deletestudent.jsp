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
<%@page import="com.dao.StudentDao, com.dao.bean.Student " %>
<%
String id = request.getParameter("id");
Student s = StudentDao.getRecordById(Integer.parseInt(id));
StudentDao.delete(s);
response.sendRedirect("Admin-Viewstudent.jsp");
%>
</body>
</html>