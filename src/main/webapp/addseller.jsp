<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c"%> 
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Admin Dashboard</title>
  <style>@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap");

/* Global Styles */
* {
  margin: 0;
  padding: 0;
  outline: none;
  border: none;
  text-decoration: none;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
.logo h1 {
    font-size: 24px; /* You can adjust the font size as needed */
  }
  
.switch {
    position: relative;
    display: inline-block;
    width: 60px;
    height: 34px;
  }
  
  .switch input {
    display: none; /* Hide the default checkbox input */
  }
  
  /* Slider (the actual toggle button) */
  .slider {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #0A2558; /* Default background color for the off state */
    transition: 0.4s;
    border-radius: 34px;
  }
  
  /* Slider when the toggle is on (checked) */
  .slider:before {
    position: absolute;
    content: "";
    height: 26px;
    width: 26px;
    left: 4px;
    bottom: 4px;
    background-color:#EAE8FFFF; /* Background color for the on state */
    transition: 0.4s;
    border-radius: 50%;
  }
  
  /* Styling for the toggle when it's checked (on state) */
  input:checked + .slider {
    background-color: rgb(0, 128, 9); /* Background color for the on state */
  }
  
  /* Positioning of the toggle when it's checked (on state) */
  input:checked + .slider:before {
    transform: translateX(26px);
  }
  
  /* Optional: Add box-shadow for a raised effect when checked */
  input:checked + .slider:before {
    box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
  }
body {
  background: #DCDCDC	;
  color: #333; /* Default text color for light mode */
  transition: background-color 0.3s, color 0.3s;
}

/* Dark Mode Styles */
[data-theme="dark"] {
  --background-color: #333;
  --text-color: #fff; /* Text color for dark mode */
}

/* Rest of your CSS styles... */

nav {
  position: static;
  top: 0;
  bottom: 0;
  height: 100vh;
  left: 0;
  width: 90px;
 
  background: #fff;
  overflow: hidden;
 
}

/* Remove transition property from hover effect to disable sliding */
nav:hover {
  width: 280px;
}


.logo img{
  width: 45px;
  height: 45px;
  border-radius: 50%;
}
.logo span{
  font-weight: bold;
  padding-left: 15px;
  font-size: 18px;
  text-transform: uppercase;
}
a{
  position: relative;
  width: 280px;
  font-size: 16px;
  font-weight: 400;
  align-items: center;
  color: rgb(19, 18, 18);
  display: table;
  padding: 10px;
}
nav .fas{
  position: relative;
  width: 70px;
  height: 40px;
  top: 20px;
  font-size: 20px;
  text-align: center;
}
.nav-item{
  position: relative;
  top: 12px;
  margin-left: 10px;
}
a:hover{
  background: #eee;
}
a:hover i{
  color: #f29f67;
  transition: 0.5s;
}
.logout{
  position: absolute;
  bottom: 18%;
}

.container{
  display: flex;
  width: 100%;
 
  background-color:white;
}
.faded-line {
    width: 110%; /* Adjust the width as needed */
    height: 1px; /* Adjust the height to control the line thickness */
    background: gray; /* Gray gradient */
    margin-top: 10px; /* Adjust the margin as needed to position the line */
  }
  
/* MAin Section */
.main{
  position: relative;
  padding: 20px;
  width: 100%;
}
.main-top{
  display: flex;
  width: 100%;
}
.main-top i{
  position: absolute;
  right: 0;
  margin: 10px 30px;
  color:#DCDCDC	;
  cursor: pointer;
}
.main .users{
  display: flex;
  width: 100%;
}
.users .card{
  width: 25%;
  margin: 10px;
  background: #fff;
  text-align: center;
  border-radius: 10px;
  padding: 10px;
  box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
}
.users .card img{
  width: 70px;
  height: 70px;
  border-radius: 50%;
}
.users .card h4{
  text-transform: uppercase;
}
.users .card p{
  font-size: 12px;
  margin-bottom: 15px;
  text-transform: uppercase;
}
.users table{
  margin:  auto;
}
.users .per span{
  padding: 5px;
  border-radius: 10px;
  background: rgb(223, 223, 223);
}
.users td{
  font-size: 30px;
  padding-right: 15px;
}
.users .card button{
  width: 100%;
  margin-top: 8px;
  padding: 7px;
  cursor: pointer;
  border-radius: 10px;
  background: transparent;
  border: 1px solid #410cd3;
}
.users .card button:hover{
  background:  #410cd3;
  color: #fff;
  transition: 0.5s;
}

/*Attendance List serction  */
.attendance{
  margin-top: 20px;
  text-transform: capitalize;
}
.attendance-list{
  width: 100%;
  padding: 10px;
  margin-top: 10px;
  background: #fff;
  border-radius: 10px;
  box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
}
.table{
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 15px;
  min-width: 100%;
  overflow: hidden;
  border-radius: 5px 5px 0 0;
}
table thead tr{
  color: #fff;
  background:#f29f67;
  text-align: left;
  font-weight: bold;
}
.table th,
.table td{
  padding: 12px 15px;
}
.table tbody tr{
  border-bottom: 1px solid #ddd;
}
.table tbody tr:nth-of-type(odd){
  background: #f3f3f3;
}
.table tbody tr.active{
  font-weight: bold;
  color:  #f29f67;
}
.table tbody tr:last-of-type{
  border-bottom: 2px solid#f29f67;
}
.table button{
  padding: 6px 20px;
  border-radius: 10px;
  cursor: pointer;
  background: transparent;
  border: 1px solid  #f29f67;
}
.table button:hover{
  background: #f29f67;
  color: #fff;
  transition: 0.5rem;
}

input[type="checkbox"]
{
   
    visibility: hidden;

}
.check
{
    position: relative;
    display: block;
    width: 40px;
    height: 20px;
    background: #092c3e;
    cursor: pointer;
    border-radius: 20px;
    overflow: hidden;
    transition: ease-in 0.5s;
}
input[type="checkbox"]:checked~ .check
{
    background: #fff;
    box-shadow: 0 0 0 1200px #092c3e;
}
.check:before{
    content: ' ';
    position: absolute;
    top: 2px;
    left: 2px;
    background: #fff;
    width: 16px;
    height: 16px;
    border-radius: 50%;
    transition: 0.5s;
}
input[type="checkbox"]:checked~ .check:before{
    transform: translate(-50px);

}

.progress-container {
    width: 200px;
    height: 200px;
    position: relative;
  }

  .progress-bar {
    width: 100%;
    height: 100%;
    border: 10px solid #f3f3f3;
    border-top: 10px solid  #f29f67;
    border-radius: 50%;
    animation: spin 2s linear infinite, fill 2s forwards;
    transform-origin: center;
  }

  .progress-fill {
    width: 100%;
    height: 100%;
    background-color: white;
    border-radius: 50%;
    transform: rotate(0deg);
    transform-origin: center;
    transition: transform 2s;
  }

  .progress-text {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size: 24px;
    font-weight: bold;
    color: white;
  }
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
input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date],input[type=file],textarea
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}
  @keyframes spin {
    0% {
      transform: rotate(0deg);
    }
    100% {
      transform: rotate(360deg);
    }
  }

  @keyframes fill {
    0% {
      transform: scaleY(0);
    }
    100% {
      transform: scaleY(1);
    }
  }
  
  </style>
  <!-- Font Awesome Cdn Link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
</head>
<body>
  <div class="container">
    <%@ include file="adminnavbar.jsp" %>
 
<!--class="fas fa-user-cog"-->

    <section class="main">
      <div class="main-top">
        <h1>Dashboard</h1>
        
      </div>
      <br>
      <br>
<br>
    <h3 align=center><u>Add Seller</u></h3>

<br>
<h3>${message}</h3>
<form action="insertseller" method="post" >

<table align=center>


<tr><td></td></tr>

<tr>
<td><label>Name</label></td>
<td><input type="text" name="name" required="required"/></td>
</tr>


<tr>
<td><label>Gender</label></td>
<td><input type="text" name="gender" required="required"/></td>
</tr>
<tr>
<td><label>Username</label></td>
<td><input type="email" name="username" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
    <td><label>Password</label></td>
    <td><input type="password" name="password" required="required"/></td>
</tr>


<tr><td></td></tr>




<tr><td></td></tr>


<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button"></td>
</tr>

</table>

</form>
  <script src="script.js"></script>
</body>
</html>