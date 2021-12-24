<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@page import="com.dao.CoachDao" %>
<jsp:useBean id="u" class="com.dao.bean.Coach"></jsp:useBean>
<jsp:setProperty property="*" name="u"></jsp:setProperty>

<%
int i=CoachDao.EditPersonalInformation(u);
int theCoachId=u.getCoachid();
response.sendRedirect("Coach-PersonalInformation.jsp?coachid="+theCoachId);
%>

</body>
</html>