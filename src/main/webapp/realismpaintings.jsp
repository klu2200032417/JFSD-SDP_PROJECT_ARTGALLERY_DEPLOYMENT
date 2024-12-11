<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Realism Paintings</title>
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

   <%@ include file="navbar.jsp" %>
<br><br>
<div class="mainhead">
  <b><h1 style="color: black; align-items: center; text-align: center;">Realisim Paintings</h1></b> 
 </div>
   

      <div class="card">
   <img src="rp1.jpeg" alt="Image 1">
        <h2>Liberty Leading the People</h2>
        <p><span>&#8377; 17,769</span></p>
        <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
        <a href=""> <button class="custom-cursor">Buy Now</button></a>
      </div>
      
      <div class="card">
         <img src="rp2.jpg" alt="Image 2">
        <h2>The Persistence of Memory</h2>
        <p><span>&#8377; 97,658</span></p>
        <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
        <a href=""> <button class="custom-cursor">Buy Now</button></a>
      </div>
      <div class="card">
        <img src="rp3.jpg" alt="Image 1">
        <h2>The Hay Wain</h2>
        <p><span>&#8377; 2,25,589</span></p>
        <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
        <a href=""> <button class="custom-cursor">Buy Now</button></a>
      </div>
      
      <div class="card">
       <img src="rp4.jpeg" alt="Image 2">
        <h2>The Third of May 1808</h2>
        <p><span>&#8377; 2,50,475</span></p>
        <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
        <a href=""> <button class="custom-cursor">Buy Now</button></a>
      </div>
      <div class="card">
       <img src="rp5.jpg" alt="Image 1">
        <h2>The Gross Clinic</h2>
        <p><span>&#8377; 1,19,979</span></p>
        <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
        <a href=""> <button class="custom-cursor">Buy Now</button></a>
      </div>
      
      <div class="card">
        <img src="rp6.jpg" alt="Image 2">
        <h2>Starry Night</h2>
        <p><span>&#8377; 3,43,686</span></p>
        <a href="Cart.html"> <button class="custom-cursor">Add to Cart</button></a>
        <a href=""> <button class="custom-cursor">Buy Now</button></a>
      </div>
     
   
      
      
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <!-- Your script to toggle the menu -->
      <script src="your-script.js"></script> 
      
</body>
</html>