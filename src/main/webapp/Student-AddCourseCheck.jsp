<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check if the course student have choosen or not(only can choose three course)</title>
</head>
<body>
<%@page import="com.dao.CourseDao,com.dao.StudentDao,com.dao.bean.Student,com.dao.bean.Course,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
int studentid = Integer.parseInt(request.getParameter("studentid"));
Student theStudent = StudentDao.getMyCourse(studentid);

int courseid = Integer.parseInt(request.getParameter("courseid"));
if(courseid==theStudent.getCourseid1() || courseid==theStudent.getCourseid2() || courseid==theStudent.getCourseid3())
{
	response.sendRedirect("Student-AddCourseFail.jsp");
}
else{
	if(theStudent.getCourseid1() == 0){
		int i=StudentDao.AddNewCourse1(studentid,courseid);
		response.sendRedirect("Student-AddCourseSuccess.jsp?studentid="+studentid);
	}
	else if(theStudent.getCourseid2() == 0){
		int i=StudentDao.AddNewCourse2(studentid,courseid);
		response.sendRedirect("Student-AddCourseSuccess.jsp?studentid="+studentid);
	}
	else if(theStudent.getCourseid3() == 0){
		int i=StudentDao.AddNewCourse3(studentid,courseid);
		response.sendRedirect("Student-AddCourseSuccess.jsp?studentid="+studentid);
	}
	else{
		response.sendRedirect("Student-AddCourseFail.jsp?studentid="+studentid);
	}
}
%>
</body>
</html>