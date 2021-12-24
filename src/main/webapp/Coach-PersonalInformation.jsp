<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coach Information</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/coach.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<body style="background-color:#DDDDDD">
<nav class="navbar navbar-expand-md" >

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<button class="navbar-toggler navbar-dark" type=button data-toggle="collapse" data-target="#main-navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link"  href="HomePage.html">Log Out</a>
		</li>
	</ul>
	</div>
</nav>

<%@page import="com.dao.CoachDao,com.dao.bean.Coach" %>
<%
String coachid = request.getParameter("coachid");
Coach o = CoachDao.getRecordById(Integer.parseInt(coachid));
%>

<header>
<h1 style="text-align:center">My Detail</h1>
</header>
<div id="detailbody">
    <dl>
   	    <dd><img id="coachphoto"  src="<%=o.getPhoto() %>" height="10%" width="25%"></dd>
        <dt>&ensp;Id</dt>
        <dd><%=o.getCoachid() %></dd>
        <dt>&ensp;Name</dt>
        <dd><%=o.getName() %></dd>
        <dt>&ensp;Email</dt>
        <dd><%=o.getEmail() %></dd>
        <dt>&ensp;Personal Profile</dt>
        <dd><%=o.getCoachinfo() %></dd>
        <dt>&ensp;Age</dt>
        <dd><%=o.getCoachage() %></dd>
        <dt>&ensp;Gender</dt>
        <dd><%=o.getCoachgender() %></dd>
        
    </dl>
<p></p>
</div>
<form action="Coach-Home.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=o.getCoachid()%>"/>
	<input  class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" id="informationreturn" type="submit" name="submit" value="Return Home"/>
</form>
<form action="Coach-EditInformation.jsp" method="post">
	<input type="hidden" name="coachid" value="<%=o.getCoachid()%>"/>
	<input  class="btn btn-outline-secondary btn-lg"style="padding: 5px 5px 5px 5px;" id="informationedit" type="submit" name="submit" value="Edit"/>
</form>
<footer class="page-footer">
	<div class="container">
	<div class="row">
		<div class="col-lg-8 col-md-8 col-sm-12">
			<h5 class="text-uppercase font-weight-bold">Extra Information</h5>		
			 <p>We chat:</p>
   			 <p> Qingchunfeiyang </p>
  			 <p>Instragram:   </p>
  			 <p>Xmum_PE_SWE306</p>	
		</div>
		<div class="col-lg-4 col-md-4 col-sm-12">
			<h5 class="text-uppercase font-weight-bold">Contact</h5>	
			<p>Xiamen University Malaysia, XMUM</p>
			<p>https://linc.xmu.edu.my</p>
			<p>xmum@edu.my</p>
			<p>+601234567</p>	
		</div>
		</div>
		</div>
	<div class="footer-copyright text-center">@ 2021 Copyright: XMUM</div>
</footer>

</body>
</html>