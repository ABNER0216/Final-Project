<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>The detail for new course</title>
</head>
<body>

<%@page import="com.dao.StudentDao,com.dao.bean.Student,com.dao.CourseDao,com.dao.bean.Course" %>
<%
int courseid = Integer.parseInt(request.getParameter("courseid"));
Course o = CourseDao.getRecordById(courseid);

int studentid = Integer.parseInt(request.getParameter("studentid"));
Student s = StudentDao.getRecordById(studentid);

%>

<header>
<h2>Course Detail</h2>
</header>

    <dl>
        <dt>Course Id</dt>
        <dd><%=o.getCourseid() %></dd>
        <dt>Course Name</dt>
        <dd><%=o.getCoursename() %></dd>
        <dt>Course Time</dt>
        <dd><%=o.getCoursetime() %></dd>
        <dt>Coach</dt>
        <dd><%=o.getCoach() %></dd>
        <dt>Course Information</dt>
        <dd><%=o.getCourseinfo() %></dd>
        
    </dl>
<p></p>

<form action="Student-AddCourseCheck.jsp" method="post">
	<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
	<input type="hidden" name="courseid" value="<%=o.getCourseid()%>"/>
	<input type="submit" name="submit" value="Add Course"/>
</form>

<form action="Student-AddCourse.jsp" method="post">
	<input type="hidden" name="studentid" value="<%=s.getStudentId()%>"/>
	<input type="submit" name="submit" value="Return List"/>
</form>


</body>
</html>