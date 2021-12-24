<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Check</title>
</head>
<body>

<%@page import="com.dao.CoachDao" %>
<jsp:useBean id="c" class="com.dao.bean.Coach"></jsp:useBean>
<jsp:setProperty property="*" name="c"></jsp:setProperty>

<%
int i=CoachDao.getLogin(c);
String email= request.getParameter("email");

int theCoachId=CoachDao.getTheCoachId(email);


if(i>0){
	response.sendRedirect("Coach-Home.jsp?coachid="+theCoachId);

}
else{
	response.sendRedirect("Coach-LoginError.jsp");
}
	
%>

</body>
</html>