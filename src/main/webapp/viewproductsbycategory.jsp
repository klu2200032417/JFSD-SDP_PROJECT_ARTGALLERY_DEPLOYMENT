<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Seller Dashboard</title>
  <style>@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap");

/* Reset CSS */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

/* Global Styles */
body {
  background: #DCDCDC;
  color: #333;
  transition: background-color 0.3s, color 0.3s;
}

/* Navbar Styles */
.navbar {
  background-color: black;
  border-radius: 30px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 10px 20px;
}

.navbar ul {
  overflow: auto;
}

.navbar li {
  list-style: none;
  margin: 0 20px;
}

.navbar li a {
  text-decoration: none;
  color: white;
  padding: 3px 3px;
}

.navbar li a:hover {
  color: red;
}

.search {
  color: white;
  float: right;
  padding: 12px 20px;
}

.navbar input {
  border: 2px solid black;
  border-radius: 14px;
  padding: 3px 17px;
  width: 129px;
}

/* Button Styles */
.button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

/* Table Styles */
table {
  width: 100%;
  border-collapse: collapse;
}

table th,
table td {
  padding: 12px 15px;
  border: 1px solid #ddd;
  text-align: center;
}

table th {
  background: #f29f67;
  color: white;
  font-weight: bold;
}

table tr:nth-child(odd) {
  background: #f3f3f3;
}

table tr:hover {
  background: #eee;
}

/* Input Styles */
input[type="text"],
input[type="password"],
input[type="number"],
input[type="email"],
select,
input[type="date"],
input[type="file"],
textarea {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label {
  padding: 12px 0;
  display: inline-block;
  font-weight: bold;
}

/* Switch Styles */
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {
  display: none;
}

.switch .slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #0A2558;
  transition: 0.4s;
  border-radius: 34px;
}

.switch .slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: #EAE8FFFF;
  transition: 0.4s;
  border-radius: 50%;
}

input:checked + .slider {
  background-color: rgb(0, 128, 9);
}

input:checked + .slider:before {
  transform: translateX(26px);
}

/* Dark Mode Styles */
[data-theme="dark"] {
  --background-color: #333;
  --text-color: #fff;
}

/* Rest of your CSS styles... */

  
  </style>
  <!-- Font Awesome Cdn Link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
</head>
<body>
  <div class="container">
    <nav>
      <ul>
       

         <h1> <span class="nav-item">Seller</span> </h1>
        </a></li>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
         <li><a href="sellerhome">
         
          <span class="nav-item">Dashboard</span>
        </a></li>
        <br>
        <li><a href="addproduct">
    
          <span class="nav-item">Add Product</span>
        </a></li>
        <li><a href="viewproductsbycategory">
    
          <span class="nav-item">View Arts by Category</span>
        </a></li>
        
        <br>
        
          
        
        <li><a href="/" class="logout">
         
          <span class="nav-item">Log out</span>
        </a></li>
      </ul>
    </nav>
 
<h3 align=center><u>View All Products</u></h3>

<br>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Product Name">

<table align=center border=2 id="myTable">

<tr class="header">

<th>ID</th>
<th>Category</th>
<th>Name</th>
<th>Description</th>
<th>Cost</th>
<th>Link</th>
<th>Image</th>
</tr>

<c:forEach items="${productlist}" var="product">

<tr>

<td> <c:out value="${product.id}"></c:out>  </td>
<td> <c:out value="${product.category}"></c:out>   </td>
<td> <c:out value="${product.name}"></c:out>   </td>
<td> <c:out value="${product.description}"></c:out>   </td>
<td> <c:out value="${product.cost}"></c:out>   </td>
<td> 

<a href='<c:url value='${product.productlink}'></c:url>'>Click Here</a>&nbsp;&nbsp;

</td>

<td> 

<img src='displayprodimage?id=${product.id}' width="20%" height="20%"> 


</td>


</tr>

</c:forEach>

</table>

    
  <script src="script.js"></script>
</body>
</html>