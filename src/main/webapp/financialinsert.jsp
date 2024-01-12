<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href = "css/home.css" type = "text/css" rel = "stylesheet">
</head>
<body>

<header>
      <div class="container">
        <div id="branding">
          <h1><span class="highlight">Event</span> POP.lk</h1>
        </div>
        <nav>
          <ul>
            <li class="current"><a href="login.jsp">Login</a></li>
            <li><a href="FinancialHome.jsp">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
          </ul>
        </nav>            
      </div>       
    </header>


<!--  home login -->

<!-- N bar content -->


 <h1> Generate Employee salary </h1><br>



<form action ="insert" method ="post" class="frm">

       
        Employee Name   <input type="text" name="name" class="frm2" required><br><br>
        Employee ID    <input type="text" name="eid" class="frm2" required><br><br>
		Email          <input type= "text" name ="email" class="frm2" required><br><br>
		Phone Number   <input type= "text" name ="phone" class="frm2" required><br><br>
		OT             <input type= "text" name ="ot" class="frm2" required><br><br>
		Bonus          <input type= "text" name ="bonus" class="frm2" required><br><br>
		Salary         <input type= "text" name ="salary" class="frm2" required><br><br>
		
		<br><br>
		
		
		<input type = "submit"  name = "submit" style = "font-size:20px;" value = "Create Employee Salary Details" >
		
	
	</form>





















<br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<footer>
      <p>event pop.lk Web Design, Copyright &copy; 2022</p>
    </footer>

</body>
</html>