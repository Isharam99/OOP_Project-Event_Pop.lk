<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
  <head>
    <title>Web Page / Home</title>  
    <link href = "css/home.css" type = "text/css" rel = "stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
  </head>
  <style>
/*   bootsrap link */

  </style>
  <body>
    <header>
      <div class="container">
        <div id="branding">
          <h1><span class="highlight">Event</span> POP.lk</h1>
        </div>
        <nav>
          <ul>
            <li class="current"><a href="login.jsp">Login</a></li>
            <li><a href="aboutus.jsp">About</a></li>
            <li><a href="#">Services</a></li>
          </ul>
        </nav>            
      </div>       
    </header>
    
    <section id="showcase">
      <div class="container">

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">

  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/welcome7.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/welcome1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/welcome3.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
      
      </div>    
    </section>
    
  
    
    
<!--     subscribe part -->
  
    <section id="newsletter">
      <div class="container">
        <h1>Subscribe To Our Newsletter</h1>
        <form>
          <input type="email" placeholder="Enter Email...">
          <button type="submit" class="button_1"> Subscribe</button>
        </form>  
      </div>
    </section>
  
  
<!--   event cart   -->
<br>

<div class="container">
  <div class="row">
    <div class="col">
          <div class="card" style="width: 20rem; height: 20rem; ">
  <img src="images/welcome6.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Wedding Events</h5>
    <p class="card-text">all the Wedding Events</p>
    <a href="#" class="btn btn-primary">More</a>
  </div>
</div>

    </div>
    <div class="col">
        <div class="card" style="width: 20rem; height: 20rem; ">
  <img src="images/welcome5.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">BirthDay Party</h5>
    <p class="card-text">all the Birthday Events</p>
    <a href="#" class="btn btn-primary">More</a>
  </div>
</div>

    </div>
    <div class="col">
        <div class="card" style="width: 20rem; height: 20rem; ">
  <img src="images/welcome1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Musical Events</h5>
    <p class="card-text">all the musical events</p>
    <a href="#" class="btn btn-primary">More</a>
  </div>
</div>
    </div>
  </div>
</div>








    




    
    <section id="boxes">
      <div class="container">
        <div class="box">
          <img src="images/1.png">
          <h3>Latest Equipment</h3>
          <p>We will e-curate your event using the latest technology of event equipment available in the market.</p>
        </div>
        <div class="box">
          <img src="images/2.png" width = "150" height = "100">
          <h3>Experience And Expertise</h3>
          <p>We have been working as Event Planners for last 5 years now working extensively with various clients and events.</p>
        </div>
        <div class="box">
          <img src="images/3.png" width = "150" height = "100">
          <h3>Cost Efficient</h3>
          <p>Though our services are affordable, we never compromise with the quality provided to clients.</p>
        </div>
      </div>
    </section>
    
    <footer>
      <p>event pop.lk Web Design, Copyright &copy; 2022</p>
    </footer>
  </body>