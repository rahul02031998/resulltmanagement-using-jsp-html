<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="java.sql.*" %>
<%@page import = "java.io.*" %>
<%@page import = "javax.servlet.*" %>
<%@page import = "javax.servlet.http.*" %>
<%@page import = "javax.servlet.http.HttpSession" %>

<%
	boolean flag = false;

	if(request.getParameter("submit")!= null)
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals("admin") && password.equals("msit"))
		{
			session.setAttribute("username",username);
			response.sendRedirect("adminHome.jsp");
		}
		else
		{
			%>
				<script>
					alert("Invalid Username or Password");
				</script>
			<%

		}

	}
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Admin</title>
      
      
      <style>
      
p{
    font-family: cursive;
    font-size: 20px;
}
body{
			background-image : linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url(images/company_logo.jpg);
			height : 100vh;
			background-size:cover;
			background-position:center;
		}
		
		.login{
			position:relative;
			top:50%;
			
			color :#fff;
			background:rgba(0,0,0,0.5);
			max-width:360px;
			margin:0 auto 100px;
			padding: 45px;
			text-align :center;
			
		}
		
		.image{
			width:100px;
			height:100px;
			border-radius:50%;
			position:relative;
			top:-50px;
		}
		
		.login input{
			font-family: "courier",sans-serif;
			outline:1;
			background:#f2f2f2;
			width:100%;
			border:0;
			margin: 0 0 15px;
			padding:15px;
			box-sizing:border-box;
			font-size:14px;
			
		}
		.login .button{
			font-family:"couri", sans-serif;
			text-transform:uppercase;
			outline:0;
			background:#4CAF50;
			width:100%;
			border:0;
			padding:15px;
			color:#FFFFFF;
			font-size:14px;
			cursor:pointer;
		}
		
		.login .button:hover{
			background:green;
			color:#111;
		}
		
		
		.message{
			margin:15px 0 0;
			color:aliceblue;
			font-size:12px;
		}
		.message a{
			color :#4CAF50;
			text-decoration:none;
		}
		
		.message a:hover{
			background:white;
			color:green;
		}
		

html { height: 100%;}
.nav .open > a, 
.nav .open > a:hover, 
.nav .open > a:focus {background-color: transparent;}

#wrapper {
    padding-left: 0;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}


#wrapper.toggled{
	padding-left: 220px;
}

#sidebar-wrapper {
    z-index: 1000;
    left: 220px;
    width: 0;
    height: 100%;
    margin-left: -220px;
    overflow-y: auto;
    overflow-x: hidden;
    background: #1a1a1a;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}
#sidebar-wrapper::-webkit-scrollbar {
  display: none;
}

#wrapper.toggled #sidebar-wrapper {
    width: 220px;
}

#page-content-wrapper {
    width: 100%;
    padding-top: 70px;
}

#wrapper.toggled #page-content-wrapper {
    position: absolute;
    margin-right: -220px;
}




.sidebar-nav {
    position: absolute;
    top: 0;
    width: 220px;
    margin: 0;
    padding: 0;
    list-style: none;
}

.sidebar-nav li {
    position: relative; 
    line-height: 20px;
    display: inline-block;
    width: 100%;
}
.sidebar-nav li:before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    z-index: -1;
    height: 100%;
    width: 3px;
    background-color: #1c1c1c;
    -webkit-transition: width .2s ease-in;
      -moz-transition:  width .2s ease-in;
       -ms-transition:  width .2s ease-in;
            transition: width .2s ease-in;

}


.sidebar-nav li:first-child a{
	color: white;
	background-color: #1a1a1a;
}
.sidebar-nav li:nth-child(2):before{
	background-color: #E825AE;
}
.sidebar-nav li:nth-child(3):before{
	background-color: #22AB9B;
}

.sidebar-nav li:nth-child(4):before{
	background-color: #314190;
}

.sidebar-nav li:nth-child(5):before{
	background-color: #279636;
}

.sidebar-nav li:nth-child(6):before{
	background-color: #7d5d81;
}

.sidebar-nav li:nth-child(7):before{
	background-color: #B34048;
}

.sidebar-nav li:nth-child(8):before{
	background-color: #0A3FA3;
}

.sidebar-nav li:nth-child(9):before{
	background-color: #35acdf;
}

.sidebar-nav li:hover:before,
.sidebar-nav li.open:hover:before{
	width: 100%;
	-webkit-transition: width .2s ease-in;
      -moz-transition:  width .2s ease-in;
       -ms-transition:  width .2s ease-in;
            transition: width .2s ease-in;
}

.sidebar-nav li a{
	display: block;
	color: #ddd;
	text-decoration: none;
	padding: 10px 15px 10px 30px;
}

.sidebar-nav li a:hover,
.sidebar-nav li a:active,
.sidebar-nav li a:focus,
.sidebar-nav li.open a:hover,
.sidebar-nav li.open a:active,
.sidebar-nav li.open a:focus{
	color: #fff;
	text-decoration: none;
	background-color: transparent;
}

.sidebar-nav > .sidebar-brand{
	height: 70px;
	font-size: 22px;
	line-height: 46px;
	
}


.sidebar-nav .dropdown-menu{
	position: relative;
	width: 100%;
	padding: 0;
	margin: 0;
	border-radius: 0;
	border:none;
	background-color: #222;
	box-shadow: none;
}

.custom-btn{
	margin-left: 15px;
	color: white;
	background-color: dimgray;
}
.custom-btn:hover{
	margin-left: 15px;
	color: red;
	background-color: black;
}

i{
    letter-spacing: 2px;;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
  <body>
<!------ Include the above in your HEAD tag ---------->

    <div id="wrapper">
        <div class="overlay"></div>
    
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                 <li class="sidebar-brand">
                     <br>
                     <a href="#"><i class="fa fa-home"> MSIT DASHBOARD</i></a>
                </li>
                <br>
                <br>
                <li>
                    <a href="index.jsp"><i class="fa fa-home"> Home</i></a>
                </li>
                <li>
                    <a href="administrator.jsp"><i class="fa fa-unlock-alt"> Admin </i></a>
                </li>
                <li>
                    <a href="dgiOneView.html"><i class="fa fa-table"> Student </i></a>
                </li>
                
            </ul>
        </nav>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <button type="button" class="btn btn-lg custom-btn" data-toggle="offcanvas">
                <i class="fa fa-bars"></i>
            </button>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                                <div class="row">
                    </div>
                    
    	<div class = "row">
	<div class = "col-rm-4">
	
		<form class = "login" method = "post" action = "#" id = "login">
			<img src ="login.png" class ="image">
			
			<div align = "center">
				
				<input type = "text" class = "form-control" placeholder = "Username" name = "username" id ="username" required>
			</div>
			<div align = "center">
				
				<input type = "Password" class = "form-control" placeholder = "Password" name = "password" id ="password" required>
			</div>
			
			
			<div align = "center">
				<input type = "submit" id = "submit" value = "login" name = "submit" class = "button">	
			</div>
		
		<p class ="message">Forgot Password?<a href = "#">Forgot</a>
		</form>
	
	</div>
	</div>

                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
 	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>   
    <script>
    $(document).ready(function () {
    	 
    	  $('[data-toggle="offcanvas"]').click(function () {
    	        $('#wrapper').toggleClass('toggled');
    	  });  
    	});
    </script>
  </body>
</html>