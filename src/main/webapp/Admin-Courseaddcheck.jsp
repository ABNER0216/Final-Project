<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="com.dao.CourseDao"%>
<jsp:useBean id="a" class="com.dao.bean.Course"></jsp:useBean>
<jsp:setProperty property="*" name="a"></jsp:setProperty>
<%
int i = CourseDao.save(a);

if(i>0){
	response.sendRedirect("Admin-Courseview.jsp");
}else{
	response.sendRedirect("Admin-Courseerror.jsp");
}
%>
</body>
</html>