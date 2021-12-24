<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>To Update Feedback</title>
</head>
<body>
<%@page import="com.dao.CoachDao,com.dao.bean.Coach,com.dao.CourseDao,com.dao.bean.Course" %>
<jsp:useBean id="o" class="com.dao.bean.Course"></jsp:useBean>
<jsp:setProperty property="*" name="o"></jsp:setProperty>

<%
int coachid = Integer.parseInt(request.getParameter("coachid"));
Coach c = CoachDao.getRecordById(coachid);
%>

<%
int z=CourseDao.ChangeAttendance(o);
int i=CourseDao.AddFeedback(o);
%>

<p>Course feedback submitted successfully!</p>
<form action="Coach-MyCourse.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input type="submit" name="submit" value="Return List"/>
</form>
</body>
</html>