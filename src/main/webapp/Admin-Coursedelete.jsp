<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.dao.CourseDao, com.dao.bean.Course, java.util.*" %>

<%
int id = Integer.parseInt(request.getParameter("id"));
Course c = CourseDao.getRecordById(id);
CourseDao.delete(c);
response.sendRedirect("Admin-Courseview.jsp");
%>
</body>
</html>