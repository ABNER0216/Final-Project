<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="com.dao.StudentDao,com.dao.bean.Student,com.dao.PlaceDao,com.dao.bean.Place,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>

<% 
int studentid = Integer.parseInt(request.getParameter("studentid"));
int placeid = Integer.parseInt(request.getParameter("placeid"));
Student s = StudentDao.getRecordById(studentid);
Place pl = PlaceDao.getRecordById(placeid);
StudentDao.cancelAppointment(pl);
response.sendRedirect("Student-Place.jsp?studentid="+studentid);
%>
</body>
</html>