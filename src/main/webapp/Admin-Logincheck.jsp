<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="com.dao.Admindao"%>
<jsp:useBean id="a" class="com.dao.bean.Admin"></jsp:useBean>
<jsp:setProperty property="*" name="a"></jsp:setProperty>
<%
int i = Admindao.get(a);

if(i!=0)
	response.sendRedirect("Admin-Mainpage.jsp");
else
	response.sendRedirect("Admin-Loginerror.jsp");
%>

</body>
</html>