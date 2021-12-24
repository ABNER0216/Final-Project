<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="com.dao.StudentDao"%>
<jsp:useBean id="s" class="com.dao.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s"></jsp:setProperty>
<%
int i = StudentDao.get(s);
String email= request.getParameter("email");

int studentID=StudentDao.getStudentIdByEmail(email);
if(i!=0)
	response.sendRedirect("Student-Home.jsp?studentid="+studentID);
else
	response.sendRedirect("Student-LoginFail.jsp");
%>
</body>


</html>          