<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.dao.StudentDao,com.dao.EquipmentDao, com.dao.bean.Student, com.dao.bean.Equipment" %>
<%
int studentid = Integer.parseInt(request.getParameter("studentid"));
int equipid = Integer.parseInt(request.getParameter("equipid"));
String borrowdate = request.getParameter("BorrowDate");
String returndate = request.getParameter("ReturnDate");
Student s = StudentDao.getRecordById(studentid);
Equipment eq = EquipmentDao.getRecordById(equipid);
int i=StudentDao.borrowEquipment(eq, s, borrowdate, returndate);
if(i==1){
response.sendRedirect("Student-Equip.jsp?studentid="+studentid);

}
%>
</body>
</html>