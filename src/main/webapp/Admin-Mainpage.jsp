<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/admin.css" rel="stylesheet" type="text/css">
<link href="BSS/css/bootstrap.css" rel="stylesheet">
</head>
<body >
<%
int studentpage=1;
request.setAttribute("studentpage",studentpage);
%>
<div class="theoverlay"></div>
<nav class="navbar navbar-expand-md">

	<img src="resources/images/xiamen.jpg" height="5%" width="20%">
	<button class="navbar-toggler navbar-dark" type=button data-toggle="collapse" data-target="#main-navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="main-navigation">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a  class="nav-link" href="HomePage.html">Log out</a>
		</li>

	</ul>
	</div>
</nav>

<div id="adminmain">   
<div  style="max-width: 18rem;" id="admin-management" style="background-color:transparent">
      <a class="btn btn-outline-secondary btn-lg" style="padding: 50px 50px 50px 50px;font-size:30px;font-weight:bold;" id="cardfont" href="Admin-Viewstudent.jsp?pagenum=${studentpage}" >Account management</a>
      <div class="card-body text-secondary">
       
      </div>
    </div> 
    <div  style="max-width: 18rem;" id="admin-management2" style="background-color:transparent">
      <a class="btn btn-outline-secondary btn-lg" style="padding: 50px 50px 50px 50px;font-size:30px;font-weight:bold;" id="cardfont"href="Admin-Courseview.jsp">Course Arrangement</a>
      <div class="card-body text-secondary">
       
      </div>
    </div> 
    <div  style="max-width: 18rem;" id="admin-management3" style="background-color:transparent">
       <a class="btn btn-outline-secondary btn-lg" style="padding: 80px 80px 80px 80px;font-size:30px;font-weight:bold;" id="cardfont"href="Admin-Feedbacklist.jsp">Feedback</a>
      <div class="card-body text-secondary">
        
      </div>
    </div>  
         
    
</div>
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