<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Abstract Paintings</title>
    <link rel="stylesheet" href="style.css">
    <style>
       


  .card {
    width: 300px;
    border: 1px solid #ccc;
    border-radius: 10px;

    padding: 20px;
    margin: 35px;
    display: inline-block;
    text-align: center;
  }

  .card img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 5px;
  }

  .card h2 {
    margin-top: 10px;
    color:black;
  }

  .card p {
    margin: 10px 0;
    color:black;
  }

  .card button {



      background: #5E5DF0;
      border-radius: 999px;
      box-shadow: #5E5DF0 0 10px 20px -10px;
      box-sizing: border-box;
      color: #FFFFFF;
      cursor: pointer;
      font-family: Inter,Helvetica,"Apple Color Emoji","Segoe UI Emoji",NotoColorEmoji,"Noto Color Emoji","Segoe UI Symbol","Android Emoji",EmojiSymbols,-apple-system,system-ui,"Segoe UI",Roboto,"Helvetica Neue","Noto Sans",sans-serif;
      font-size: 16px;
      font-weight: 700;
      line-height: 24px;
      opacity: 1;
      outline: 0 solid transparent;
      padding: 8px 18px;
      user-select: none;
      -webkit-user-select: none;
      touch-action: manipulation;
      width: fit-content;
      word-break: break-word;
      border: 0;
    }



 
   body {
    background-color: white;
  }

h1{
justify-content:flex-start;
}
.navbar {
    background-color:white;
    color: black; /* Text color */
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px 20px;
  }
  
  .navbar-brand h2 {
    font-weight: bold;
    margin: 0;
    text-decoration: none; 
    color: black; /* Text color */
  }
  .navbar-brand {
    text-decoration: none; /* Remove underline */
    color: black; 
    font-weight: bolder;
  }
  
  .navbar-nav {
    display: flex;
    align-items: center;
    margin-left: auto;
    margin-right: auto;
    list-style: none;
   
  }
 
    
  
  .nav-item {
    position: relative;
    margin: 0 10px;
    margin-right: 110px;
  }
  
  .nav-link {
    color: black; /* Text color */
    text-decoration: none;
    font-size: 16px;
    font-weight: bold; /* Text thickness */
  }
  
  /* Dropdown Menu Styles */
/* ... Your existing CSS ... */

.hover-menu {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    background-color: #fff;
    padding: 30px; /* Increase padding for a larger box */
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    z-index: 1; /* Ensure the menu appears above other content */
  }
  
  .nav-item.open .hover-menu {
    display: block;
  }
  
  .category-list {
    list-style: none;
    padding: 0;
    margin: 20px 0 0 0;
  
  }
  
  .category-list h5 {
    font-weight:900;
    font-size: larger;
    font-style: oblique;
    align-items: center;
    color: black; /* Text color for heading */
  }
  
  .category-list li  {
    color: black; /* Text color for list items */
    font-size: 16px;
    font-weight: 600;
    
    text-decoration: none;
    margin-bottom: 20px;
  }
  
  .category-list li a {
    text-decoration: none; /* Remove underline */
    color: black; /* Text color for anchor links */
   
  }
  
  
  
    </style>
</head>
<body>

     <header>
    <nav class="navbar">
      <a class="navbar-brand" href="/">
        <h2><b>ART</b></h2>
      </a>
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="paintings">Paintings ▼</a>
          <div class="hover-menu">
            <ul class="category-list">
              <li><h5>STYLE</h5></li>
              <hr>
              <br>
              <li><a href="abstractpainting">Abstract</a></li>
              <li><a href="RealisimPaintings.html">Realism</a></li>
              <li><a href="ImpressionismPaintings.html">Impressionism</a></li>
            </ul>
            <!-- Add more lists for MEDIUM and SUBJECT as needed -->
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="photography">Photography ▼</a>
          <div class="hover-menu">
            <ul class="category-list">
              <li><h5>STYLE</h5></li>
              <hr>
              <br>
              <li><a href="DocumentaryPhotography.html">Documentary</a></li>
              <li><a href="abstractphotography">Abstract</a></li>
              <li><a href="ConceptualPhotography.html">Conceptual</a></li>
            </ul>
            <!-- Add more lists for SUBJECT and MEDIUM as needed -->
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="drawings">Drawings ▼</a>
          <div class="hover-menu">
            <ul class="category-list">
              <li><h5>STYLE</h5></li>
              <hr>
              <br>
              <li><a href="abstractdrawing">Abstract</a></li>
              <li><a href="FineartDrawings.html">Fineart</a></li>
              <li><a href="GrafittiDrawings.html">Grafitti</a></li>
            </ul>
            <!-- Add more lists for SUBJECT and MEDIUM as needed -->
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="aboutus">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login">Login</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="registration">Register</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="adminlogin">Admin</a>
        </li>
      </ul>
    </nav>
  </header>
<br><br>

<div class="mainhead">
  <b><h1 style="color: black; align-items: center; text-align: center;"> Drawings</h1></b> 
 </div>

 <div class="card">
  <img src="abd1.jpeg" alt="Image 1">
       <h2>Synaptic Symphony</h2>
       <p><span>&#8377; 7,769</span></p>
       <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
       <a href=""> <button class="custom-cursor">Buy Now</button></a>
     </div>
     
     <div class="card">
        <img src="abd2.jpg" alt="Image 2">
       <h2>Uncharted Realms</h2>
       <p><span>&#8377; 9,658</span></p>
       <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
       <a href=""> <button class="custom-cursor">Buy Now</button></a>
     </div>
     <div class="card">
       <img src="abd3.jpeg" alt="Image 1">
       <h2>Whispering Horizons</h2>
       <p><span>&#8377; 2,25,589</span></p>
       <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
       <a href=""> <button class="custom-cursor">Buy Now</button></a>
     </div>
     
     <div class="card">
      <img src="abd4.jpeg" alt="Image 2">
       <h2>Journey of Illusions</h2>
       <p><span>&#8377; 2,50,475</span></p>
       <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
       <a href=""> <button class="custom-cursor">Buy Now</button></a>
     </div>
     <div class="card">
      <img src="abd5.jpg" alt="Image 1">
       <h2>Journey Beyond Bounds</h2>
       <p><span>&#8377; 19,979</span></p>
       <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
       <a href=""> <button class="custom-cursor">Buy Now</button></a>
     </div>
     
     <div class="card">
       <img src="abd6.jpg" alt="Image 2">
       <h2>Enigma's Palette</h2>
       <p><span>&#8377; 43,686</span></p>
       <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
       <a href=""> <button class="custom-cursor">Buy Now</button></a>
     </div>
     <div class="card">
      <img src="f1.jpg" alt="Image 1">
           <h2>Whispers of Pencil</h2>
           <p><span>&#8377;4,897</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         
         <div class="card">
            <img src="f2.jpg" alt="Image 2">
           <h2>Strokes of Imagination</h2>
           <p><span>&#8377; 7,562</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         <div class="card">
           <img src="f3.jpeg" alt="Image 1">
           <h2>Sublime Contours</h2>
           <p><span>&#8377; 2,250</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         
         <div class="card">
          <img src="f11.jpeg" alt="Image 2">
           <h2>Vivid Pencil Dreams</h2>
           <p><span>&#8377; 5,190</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         <div class="card">
          <img src="f5.jpeg" alt="Image 1">
           <h2>Layers of Artistry</h2>
           <p><span>&#8377; 19,089</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         
         <div class="card">
           <img src="f6.jpg" alt="Image 2">
           <h2>Emotive Delineations</h2>
           <p><span>&#8377; 7,890</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         <div class="card">
           <img src="f7.jpeg" alt="Image 2">
           <h2>Strokes of Enchantment</h2>
           <p><span>&#8377; 7,678</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         <div class="card">
           <img src="f8.jpg" alt="Image 2">
           <h2>Contours of Creativity</h2>
           <p><span>&#8377;62,450</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         <div class="card">
           <img src="f9.jpeg" alt="Image 2">
           <h2>Symphony of Shadows</h2>
           <p><span>&#8377;90,765</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         <div class="card">
           <img src="f10.jpg" alt="Image 2">
           <h2>Graceful Sketches</h2>
           <p><span>&#8377;72,876</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         <div class="card">
           <img src="f4.jpg" alt="Image 2">
           <h2>Pencil and Perception</h2>
           <p><span>&#8377;25,456</span></p>
           <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
           <a href=""> <button class="custom-cursor">Buy Now</button></a>
         </div>
         <div class="card">
          <img src="ab1.jpeg" alt="Image 1">
               <h2>Ethereal Whispers</h2>
               <p><span>&#8377; 17,769</span></p>
               <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
               <a href=""> <button class="custom-cursor">Buy Now</button></a>
             </div>
             
             <div class="card">
                <img src="ab2.avif" alt="Image 2">
               <h2>Harmony in Flux</h2>
               <p><span>&#8377; 97,658</span></p>
               <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
               <a href=""> <button class="custom-cursor">Buy Now</button></a>
             </div>
             <div class="card">
               <img src="ab3.jpeg" alt="Image 1">
               <h2>Geometric Art</h2>
               <p><span>&#8377; 2,25,589</span></p>
               <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
               <a href=""> <button class="custom-cursor">Buy Now</button></a>
             </div>
             
             <div class="card">
              <img src="ab4.jpeg" alt="Image 2">
               <h2>Mystic Mirage</h2>
               <p><span>&#8377; 2,50,475</span></p>
               <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
               <a href=""> <button class="custom-cursor">Buy Now</button></a>
             </div>
             <div class="card">
              <img src="ab5.jpeg" alt="Image 1">
               <h2>Journey Beyond Bounds</h2>
               <p><span>&#8377; 1,19,979</span></p>
               <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
               <a href=""> <button class="custom-cursor">Buy Now</button></a>
             </div>
             
             <div class="card">
               <img src="ab6.jpg" alt="Image 2">
               <h2>Peackok Abstract</h2>
               <p><span>&#8377; 3,43,686</span></p>
               <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
               <a href=""> <button class="custom-cursor">Buy Now</button></a>
             </div>
             <div class="card">
               <img src="ab7.jpg" alt="Image 2">
               <h2>Evolving Echoes</h2>
               <p><span>&#8377; 1,78,379</span></p>
               <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
               <a href=""> <button class="custom-cursor">Buy Now</button></a>
             </div>
             <div class="card">
               <img src="ab8.jpg" alt="Image 2">
               <h2>Elephant Abstract</h2>
               <p><span>&#8377;1,83,989</span></p>
               <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
               <a href=""> <button class="custom-cursor">Buy Now</button></a>
             </div>
          
             
             
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Your script to toggle the menu -->
<script src="your-script.js"></script> 

</body>
</html>