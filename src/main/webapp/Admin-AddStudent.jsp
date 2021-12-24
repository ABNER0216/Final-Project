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
<jsp:useBean id="u" class="com.dao.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="u"></jsp:setProperty>
<%
int i = StudentDao.save(u);

if(i>0){
	response.sendRedirect("Admin-Addstudentsuccess.jsp");
}else{
	response.sendRedirect("Admin-Addstudenterror.jsp");
}
%>
</body>
</html>