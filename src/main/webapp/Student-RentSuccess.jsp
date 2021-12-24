<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.dao.StudentDao,com.dao.PlaceDao, com.dao.bean.Student, com.dao.bean.Place" %>
<%
int studentid = Integer.parseInt(request.getParameter("studentid"));
int placeid = Integer.parseInt(request.getParameter("placeid"));
String startdate = request.getParameter("StartDate");
String enddate = request.getParameter("EndDate");
Student s = StudentDao.getRecordById(studentid);
Place pl = PlaceDao.getRecordById(placeid);
int i=StudentDao.appointPlace(pl, s, startdate, enddate);
if(i==1){
response.sendRedirect("Student-Place.jsp?studentid="+studentid);

}
%>
</body>
</html>