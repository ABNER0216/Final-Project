<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="com.dao.StudentDao,com.dao.bean.Student,com.dao.EquipmentDao,com.dao.bean.Equipment,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<script type="text/javascript" language="javascript">
alert("There is no this kind of equipment, please check it again.");
</script>
<%
int studentid = Integer.parseInt(request.getParameter("studentid"));

response.sendRedirect("Student-Equip.jsp?studentid="+studentid);
%>
 
</body>
</html>