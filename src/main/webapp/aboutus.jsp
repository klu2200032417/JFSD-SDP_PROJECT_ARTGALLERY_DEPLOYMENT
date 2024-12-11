<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    nav {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
   
      background-color: #6194d5;
      justify-content: space-between;
      overflow: auto;
    }

    ul li {
      position: relative;
      margin: 0 20px;
      list-style: none;
      display: inline-block;
      padding: 14px;
      font-size: 17px;
    }

    ul li a {
    
      text-decoration: none;
      cursor: pointer;
      color: rgb(255, 255, 255);
    }

    ul li a:hover {
      background-color: pink;
    }

    .container {
  position: relative;
  max-width: 1300px; /* Maximum width */
  margin: 0 auto; /* Center it */
}

.container .content {
  position: absolute; /* Position the background text */
  bottom: 0; /* At the bottom. Use top:0 to append it to the top */
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #f1f1f1; /* Grey text */
  width: 100%; /* Full width */
  padding: 20px; /* Some padding */
}
.card {
  box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: pink;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}    
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left; 
  width: 25%;
  padding: 0 ;
  margin-left: 50px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 ;
margin-left: 100px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
 
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
  margin-left: 20px;
}
.footer {
    background-color:white;
    padding: 20px;
    text-align: center;
  }
  
  .quotation {
    font-style: italic;
    color: #555;
    margin: 0;
  }

  </style>
   <link rel="stylesheet" href="style.css">
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {
        "packages":["map"],
        // Note: you will need to get a mapsApiKey for your project.
        // See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
        "mapsApiKey": "AIzaSyBNdEIt3PebSlhomppVqsXZAOELrDv52YQ"
      });
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Lat', 'Long', 'Name'],
          [16.5062, 80.6480,'Vijayawada'],
          [16.3067, 80.4365, 'Guntur'],
          [16.4419, 80.6226, 'KLU'],
        ]);
        var map = new google.visualization.Map(document.getElementById('map_div'));
        map.draw(data, {
          showTooltip: true,
          showInfoWindow: true
        });      }
    </script>
</head>
<body>
  <%@ include file="navbar.jsp" %>
      <br>
      <br>
  <div class="container">
    <img src="aboutback.jpg" width="100%" height="600">
    <div class="content">
      <h1 style="text-align:center">About us</h1>
      <br><p>The Online Art Gallery is a web-based platform that showcases and promotes various artworks, allowing artists to exhibit their creations and art enthusiasts to explore and purchase artworks online. The platform serves as a virtual art gallery, providing a curated collection of paintings, sculptures, photographs, digital art, and other forms of visual art.</p>
     <br> <p>Our mission is to connect artists with art lovers, promote art appreciation, and facilitate art sales and transactions. Whether you're an artist looking to share your work with a wider audience or an art enthusiast searching for unique pieces to adorn your space, our platform offers a space to discover, appreciate, and acquire art.</p>
      <br><p>We believe in the power of art to inspire, evoke emotions, and create meaningful connections. Through our platform, we aim to foster a vibrant community of artists and art enthusiasts who share a passion for creativity and self-expression.</p>
     <br> <p>Thank you for joining us on this artistic journey!</p>
    </div>
  </div>
  <br>
  <br>
 
<br>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--
<div class="row">
<div class="column">
<div class="card">
  <img src="images/1.jpeg" alt="gayatri" style="width:100%">
  <br>
  <h1>Gayathri</h1>
  <br>
  <p class="title"> TEAM MEMBER </p>
  <br>
   
  <br><br><br>
  
  <a href="https://www.linkedin.com/in/madhava-reddy-20830a243/" target="_blank"><button class="button" ><i class="fa fa-envelope"></i> Contact</button></a> 
</div>
</div>

<div class="column">
<div class="card">
  <img src="images/1.jpeg" alt="madhava" style="width:100%">
  <br>
  <h1>Madhava Reddy</h1>
  <br>
  <p class="title"> TEAM MEMBER </p>
  <br>
   
  <br><br><br>
  <a href="https://www.linkedin.com/in/madhava-reddy-20830a243/" target="_blank"><button class="button" ><i class="fa fa-envelope"></i> Contact</button></a> 
</div>
</div>

<div class="column">
  <div class="card">
    <img src="images/1.jpeg" alt="yasaswini" style="width:100%">
    <br>
    <h1>Yasaswini</h1>
    <br>
    <p class="title"> TEAM MEMBER </p>
    <br>
    
    <br><br><br>
    <a href="https://www.linkedin.com/in/yasaswini-kakumanu-03a331241/" target="_blank"><button class="button" ><i class="fa fa-envelope"></i> Contact</button></a> 
  </div>
  </div>

  

</div>
-->
 <section >
        <div  id="map_div" style="width: 800px; height: 700px"></div>
    </section>
<footer class="footer">
  <p class="quotation">"Art washes away from the soul the dust of everyday life." </p>
</footer>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Your script to toggle the menu -->
<script src="your-script.js"></script>
</body>
</html>