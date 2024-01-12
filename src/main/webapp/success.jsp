<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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


<h1> succes</h1>



<table>
	
	<c:forEach var ="sal" items ="${salDetails}">
	
	
	<c:set var ="id" value = "${sal.id }"/>
	<c:set var ="name" value = "${sal.name }"/>
	<c:set var ="eid" value = "${sal.eid }"/>
	<c:set var ="email" value = "${sal.email }"/>
	<c:set var ="phone" value = "${sal.phone }"/>
	<c:set var ="ot" value = "${sal.ot }"/>
	<c:set var ="bonus" value = "${sal.bonus }"/>
	<c:set var ="salary" value = "${sal.salary }"/>
	<tr>
		<td> Employee ID </td>	
		<td>${sal.id}</td>
	</tr>
	<tr>
		<td>Employee Name 	</td>	
		<td>${sal.eid}</td>
	</tr>
	
	<tr>
		<td>Employee eID 	</td>	
		<td>${sal.eid}</td>
	</tr>
	<tr>
		<td>Email 	</td>	
		<td>${sal.email}</td>
	</tr>
	<tr>
		<td>Phone Number  </td>	
		<td>${sal.phone}</td>
	</tr>
	<tr>
		<td>OT  </td>	
		<td>${sal.ot}</td>
	</tr>
	<tr>
		<td>Bonus </td>	
		<td>${sal.bonus}</td>
	</tr>
	<tr>
		<td>Salary </td>	
		<td>${sal.salary}</td>
	</tr>
	
 
 
</c:forEach>
	</table>
	<br>






</body>
</html>