<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>


<!-- bootstrap -->
 <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />


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


<h1>Financial manager</h1>

<!-- N bar content -->
<nav class="navbar navbar-dark bg-dark">
  <div class="topnav">
</div>
</nav>

<br>


<table class ="table">
	
	<c:forEach var ="fin" items ="${finDetails}">
	
	<c:set var="id" value="${fin.id}"/>
		<c:set var="name" value="${fin.name}"/>
			<c:set var="email" value="${fin.email}"/>
				<c:set var="phone" value="${fin.phone}"/>
	              <c:set var="username" value="${fin.username}"/>
	                <c:set var="password" value="${fin.password}"/>
	                
	                
	       
	<tr>
		<td>Financial Manager ID   </td>	
		<td>${fin.id}</td>
	</tr>
	<tr>
		<td>Financial Manager Name 	  </td>	
		<td>${fin.name}</td>
	</tr>
	<tr>
		<td>Financial Manager Email 	  </td>	
		<td>${fin.email}</td>
	</tr>
	<tr>
		<td>Financial Manager phone   </td>	
		<td>${fin.phone}</td>
	</tr>
	<tr>
		<td>Financial Manager UserName   </td>	
		<td>${fin.username}</td>
	</tr>
	<tr>
		<td>Financial Manager password   </td>	
		<td>${fin.password}</td>
	</tr>
	  
 
 
</c:forEach>
	</table>
	
	<c:url value ="updatefinancial.jsp" var="finupdate">
	
	 <c:param name="id" value ="${id}"/>
	 <c:param name="name" value ="${name}"/>
	 <c:param name="email" value ="${email}"/>
	 <c:param name="phone" value ="${phone}"/>
	 <c:param name="username" value ="${username}"/>
	 <c:param name="password" value ="${password}"/>
	 
	
	</c:url>
<div class="d-grid gap-2 col-6 align-left">
<a href="${finupdate}"><input type ="button"  class="btn btn-primary" name ="update" value="Update My Data"></a>
</div>

<br>
<c:url value = "deletefinancial.jsp" var="findelete">
<c:param name="id" value ="${id}"/>
<c:param name="name" value ="${name}"/>
<c:param name="email" value ="${email}"/>
<c:param name="phone" value ="${phone}"/>
<c:param name="username" value ="${username}"/>
<c:param name="password" value ="${password}"/>

</c:url>

<div class="d-grid gap-2 col-6 align-left">
<a href="${findelete}">	<input type ="button" class="btn btn-primary" name ="delete" value="Delete My Account" align = "left"> </a>
	</div>
	<br>
	
	<!--   event add e -->
<div class="d-grid gap-2 col-6 mx-auto align-center">
      <a href ="financialinsert.jsp"><button class="btn btn-primary" type="button">Insert Employee salary details</button></a>
                  
      <a href ="financialupdate.jsp"><button class="btn btn-primary" type="button">Update Employee salary details</button></a>

      <a href ="financialdelete.jsp"><button class="btn btn-primary" type="button">Delete Employee salary details</button></a>

</div>
	
	
	
	
	
	
</body>
</html>