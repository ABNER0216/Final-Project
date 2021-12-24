<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Feedback to finish the course</title>
</head>
<body>
<h2>Please enter course feedback.</h2>
<%@page import="com.dao.CoachDao,com.dao.bean.Coach,com.dao.CourseDao,com.dao.bean.Course" %>
<%
int courseid = Integer.parseInt(request.getParameter("courseid"));
Course o = CourseDao.getRecordById(courseid);

int coachid = Integer.parseInt(request.getParameter("coachid"));
Coach c = CoachDao.getRecordById(coachid);

%>
<header>
<h2>Edit form</h2>
</header>

<form action="Coach-UpdateFeedback.jsp" method="post">
	<input type="hidden" name="courseid" value="<%=o.getCourseid() %>"/>
	<table>
	<tr height="60px"><td>Feedback:</td>
	<td><input type="text" name="feedback" value="<%=o.getFeedback() %>"/></td>
	</tr>

	</table>
	
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input type="submit" value="Submit Feedback">
</form>

<form action="Coach-MyCourse.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=c.getCoachid()%>"/>
	<input type="submit" name="submit" value="Return List"/>
</form>
</body>
</html>