<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Art Gallery</title>
</head>
<body>
  <%@ include file="navbar.jsp" %>
  <BR>
    


  <section class="hero">
    <div class="hero-content">
      <div class="hero-text">
        <h1>Where imagination thrives, masterpieces come alive.</h1>
        <p>Discover the most breath-taking exhibition around the world from the curated artwork museum exhibition, gallery opening and more</p>
      </div>

      
      <div class="hero-cards">
        <div class="hero-card round-top-left">
          <img src="painting1.jpg" alt="Painting 1">
          <p>"Time's Echo"</p>
        </div>
        <div class="hero-card">
          <img src="painting2.jpg" alt="Painting 2">
          <p>"Wild Serenity"</p>
        </div>
        <div class="hero-card round-bottom-right">
          <img src="painting3.jpg" alt="Painting 3">
          <p>"Captured Essence"</p>
        </div>
      </div>
    </div>
  </section>
  <!--BLOG -->
  <section class="card-section">
    <div class="card">
      <img src="image-1.jpg" alt="Image 1">
      <h3>Abstract Expressionism</h3>
      <hr>
      <p>"Characterized by bold brushstrokes, vibrant colors, and a focus on emotional intensity."</p>
    </div>
    <div class="card">
      <img src="image2.jpg" alt="Image 2">
      <h3>Portrait Painting</h3>
      <hr>
      <p> "Captures the essence of individuals, immortalizing their emotions and personality on canvas." </p>
    </div>
    <div class="card">
      <img src="image3.jpeg" alt="Image 3">
      <h3>Conceptual Photography</h3>
      <hr>
      <p>" Transforms abstract ideas into captivating visual narratives, challenging viewers to engage with thought-provoking concepts."</p>
    </div>
    <div class="card">
      <img src="image4.jpg" alt="Image 4">
      <h3>Graffiti Drawings</h3>
      <hr>
      <p>"Give voice to the streets, merging art and activism through dynamic visual storytelling."</p>
    </div>
  </section>
<footer class="footer">
    <p class="quotation">"Art washes away from the soul the dust of everyday life." </p>
  </footer>


  <!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Your script to toggle the menu -->
<script src="your-script.js"></script>

</body>
</html>
    