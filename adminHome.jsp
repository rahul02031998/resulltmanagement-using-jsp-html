<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import ="java.sql.*" %>
<%@page import = "java.io.*" %>
<%@page import = "javax.servlet.*" %>
<%@page import = "javax.servlet.http.*" %>
<%@page import = "javax.servlet.http.HttpSession" %>
<%
  boolean flag = false;
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("administrator.jsp");
	}

	else if(request.getParameter("logout")!=null)
	{
		session.invalidate();
		response.sendRedirect("administrator.jsp");
	}
  else if(request.getParameter("sumbit1")!=null)
  {
    String bname = request.getParameter("bname");
    String rollno = request.getParameter("rollno");
    String name = request.getParameter("name");
    String fathername = request.getParameter("fathername");
    String gender = request.getParameter("gender");

    Connection con ;
      ResultSet rs;
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost/studentdb","root","Rahulsql");
      
      String sql = "insert into student(rollno,name,bname,fathername,gender) values(?,?,?,?,?)";
      
      PreparedStatement ps;
      ps = con.prepareStatement(sql);
      
      ps.setString(1,rollno);
      ps.setString(2,name);
      ps.setString(3,bname);
      ps.setString(4,fathername);
      ps.setString(5,gender);
      
      ps.executeUpdate();
      
      flag = true;
      
      if(flag)
      {
       %>
        <script>
          alert("New Record Added");
        </script>
        <% 
      }    
  }
  else if(request.getParameter("sumbit2")!=null) 
    {
      String rollno = request.getParameter("rollno");
      String physics = request.getParameter("physics");
      String chemistry = request.getParameter("chemistry");
      String math = request.getParameter("math");
      String  electrical= request.getParameter("electrical");
      String  electronic= request.getParameter("electronic");
      String  physicslab= request.getParameter("physicslab");
      String  chemistrylab= request.getParameter("chemistrylab");

        Connection con ;
      ResultSet rs;
      Class.forName("com.mysql.cj.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost/studentdb","root","Rahulsql");
      
      String sql = "insert into subject(rollno,physics,chemistry,math,electrical,electronic,physicslab,chemistrylab) values(?,?,?,?,?,?,?,?)";
      
      PreparedStatement ps;
      ps = con.prepareStatement(sql);
      
      ps.setString(1,rollno);
      ps.setString(2,physics);
      ps.setString(3,chemistry);
      ps.setString(4,math);
      ps.setString(5,electrical);
      ps.setString(6,electronic);
      ps.setString(7,physicslab);
      ps.setString(8,chemistrylab);
      
      ps.executeUpdate();
      
      flag = true;
      
      if(flag)
      {
       %>
        <script>
          alert("New Record Added");
        </script>
        <% 
      }
  }

%>
<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>Admin Home</title>
<body>
<br>
<br>

<div class="w3-container">
  <div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Student</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Insert New Result</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Students</button>
     <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Student Result</button>
     <a href="administrator.jsp" class="w3-bar-item w3-button tablink">Logout</a>
  </div> 
  
  <div id="London" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Students</div>
                        <div class="card-body">
                            <form name="my-form" action="#" method="post">

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Branch Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="bname" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="rollno" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="name" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Father Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="fathername" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="gender" required>
                                    </div>
                                </div>

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" id="sumbit1" name="sumbit1" class="btn btn-primary">
                                        Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
  </div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
  <br>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>



<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Insert New Result</div>
                        <div class="card-body">
                            <form name="my-form" action="#" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text"class="form-control" name="rollno" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Engg. Physics-I</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="physics" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Engg. Chemistry</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="chemistry" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Engg. Mathematics-I</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="math" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Basic Electrical Engg</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="electrical" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Electronic Engg.</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="electronic" required>
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Engg. Chemistry Lab</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="chemistrylab" required>
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Engg. Physics Lab</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="physicslab" required>
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" id="sumbit2" name="sumbit2" class="btn btn-primary">
                                       Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <br>
    </div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html> 
  </div>

  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Roll No.</th>
          <th>Name </th>
          <th>Branch Name</th>
          <th>Father Name</th>
          <th>Gender</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
    <%
      Connection con ;
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost/studentdb","root","Rahulsql");
      PreparedStatement ps;
      ResultSet rs;
      
      String sql = "select * from student";
      Statement st = con.createStatement();

      rs = st.executeQuery(sql);
            
            while(rs.next())
            {
        %>
        <tr>
          <td><%=rs.getString(2) %></td>
          <td><%=rs.getString(3) %></td>
          <td><%=rs.getString(4) %></td>
          <td><%=rs.getString(5) %></td>
          <td><%=rs.getString(6) %></td>
        </tr>
          <%
              }
              %>
      </tbody>
    </table>
  </div>
</section>
</div>
<div id="Tokyo1" class="w3-container w3-border city" style="display:none">
   
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Roll Number</th>
          <th>Engg. Physics-I</th>
          <th>Engg. Chemistry</th>
          <th>Engg. Mathematics-I</th>
          <th>Basic Electrical Engg</th>
          <th>Electronic Engg.</th>
          <th>Engg. Chemistry Lab</th>
          <th>Engg. Physics Lab</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
    <%
      Connection conn;
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost/studentdb","root","Rahulsql");
      PreparedStatement ps1;
      ResultSet rs1;
      
      String sql1 = "select * from subject";
      Statement st1 = conn.createStatement();

      rs1 = st1.executeQuery(sql1);
            
            while(rs1.next())
            {
        %>
        <tr>
          <td><%=rs1.getString(1) %></td>
          <td><%=rs1.getString(2) %></td>
          <td><%=rs1.getString(3) %></td>
          <td><%=rs1.getString(4) %></td>
          <td><%=rs1.getString(5) %></td>
          <td><%=rs1.getString(6) %></td>
          <td><%=rs1.getString(7) %></td>
          <td><%=rs1.getString(8) %></td>
        </tr>
        <%
             }
          %>
      </tbody>
    </table>
  </div>
</section>

</div>
  <hr class="new1">
<center><h5>All Right Reserved @ MSIT :: 2020-2021</h5></center> 
  <hr class="new1">
<br>
</body>
</html>