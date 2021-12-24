<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attend course(delete from database)</title>
</head>
<body>
<%@page import="com.dao.StudentDao,com.dao.bean.Student" %>
<%
int studentid = Integer.parseInt(request.getParameter("studentid"));
int courseid = Integer.parseInt(request.getParameter("courseid"));
StudentDao.AddHistoryCourse(studentid,courseid);
Student s = StudentDao.getRecordById(studentid);
if(s.getCourseid1()==courseid)
{
	int i=StudentDao.DeleteCourseid1(studentid);
}
if(s.getCourseid2()==courseid)
{
	int i=StudentDao.DeleteCourseid2(studentid);
}
if(s.getCourseid3()==courseid)
{
	int i=StudentDao.DeleteCourseid3(studentid);
}
response.sendRedirect("Student-MyCourse.jsp?studentid="+studentid);
%>

</body>
</html>