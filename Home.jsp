<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("administrator.jsp");
	}

	out.println(session.getAttribute("username"));
	if(request.getParameter("logout")!=null)
	{
		session.invalidate();
		response.sendRedirect("administrator.jsp");
	}

%>


<!DOCTYPE html>
<html>
<head>
	
	<title>Online College Adminstrator</title>
	<style>
		body{
			background-image : linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url(images/company_logo.jpg);
			height : 100vh;
			background-size:cover;
			background-position:center;
		}
		
		.middle {
  			position: absolute;
  			top: 50%;
  			left: 50%;
  			transform: translate(-50%, -50%);
 			text-align: center;
 			font-family: courier;
			}
		 
	</style>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<form method="post" action="#">
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">College Adminstrator</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#">LogIn</a></li>
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Dashboard</a></li>
      <li><input type= "submit" value="logout" name="logout"></li>
    </ul>
  </div>
	</nav>
	
	<br>
	<div class="middle">
    	<h1 style="background-color:powderblue;">WELCOME TO THE ADMIN PAGE</h1>
    
  	</div>

	</form>
</body>
</html>