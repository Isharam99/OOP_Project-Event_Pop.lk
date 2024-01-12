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

<%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");
   String username = request.getParameter("username");
   String password = request.getParameter("password");
%>

<form action="update" method="post" style = "font-size:20px;">
<br>
<br>
	<table>
		<tr>
			<td>Financial Manager ID</td>
			<td><input type="text" name="id" style = "font-size:20px;" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Financial Manager Name</td>
			<td><input type="text" name="name" style = "font-size:20px;" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Financial Manager Email</td>
		<td><input type="text" name="email" style = "font-size:20px;" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Financial Manager phone</td>
		<td><input type="text" name="phone" style = "font-size:20px;"value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>Financial Manager UserName</td>
		<td><input type="text" name="username" style = "font-size:20px;" value="<%= username %>"></td>
	</tr>
	<tr>
		<td>Financial Manager password</td>
		<td><input type="password" name="password" style = "font-size:20px;" value="<%= password %>"></td>
	</tr>
	
			
	</table>
	<br>
	<input type="submit" name="submit" style = "font-size:20px;" value="Update Financial data">
	</form>


</body>
</html>