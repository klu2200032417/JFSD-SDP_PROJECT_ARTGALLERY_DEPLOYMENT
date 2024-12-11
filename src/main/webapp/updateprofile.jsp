<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<title>Registration Page</title>
<style>

  .signup{
  margin: 0;
  padding: 0;
  box-sizing: border-box;

 }
 .wrapper{
  width: 330px;
  padding: 2rem,1rem ;
  margin: 50px auto;
  background-color: #fff;
  border-radius: 10px;
  text-align: center;
  box-shadow: 0 20px 35px rgba(0,0,0,0);
 }
 h1{
  font-size: 2 rem;
  color: #07001f;
  margin-bottom: 1.2rem;
 }
 form input{
  width: 92%;
  outline: none;
  border: 1px solid #fff;
  padding: 12px 20px;
  margin-bottom: 10px;
  border-radius: 20px;
  background: #e4e4e4;

 }
 button{
  font-size: 1rem;
  margin-top: 1.8rem;
  padding: 10px 0;
  border-radius: 20px;
  border: none;
  width: 90%;
  color: #fff;
  cursor: pointer;
  background: rgba(17,107,143);
 }
 button:hover{
  background: rgba(17, 107, 143, 0.877);
 }
 input:focus{
  border: 1px solid rgb(192, 192, 192);
 }
 .terms
 {
margin-top: 0.2rem;
 }
 .terms input{
  height: 1em;
  width: 1em;
  vertical-align: middle;
  cursor: pointer;
 }
 .terms label{
  font-size: 0.7rem;
 }
 .terms a{
  color: rgb(17, 107, 143);
  text-decoration: none;
 }
 .member{
  font-size: 0.8rem;
  margin-top: 1.4rem;
  color: #636363;
 }
 .member a{
  color: rgb(17, 107, 143);
  text-decoration: none;
 }
 form {
  width: 80%; /* Adjust the width as needed */
  margin: 0 auto; /* Center align the form horizontally */
  text-align: left; /* Reset text alignment to left */
   padding: 2rem 1rem; /* Adjust the padding as needed */
   display: flex;
  flex-direction: column;
  align-items: center;
}

form input {
 width: 100%; /* Set the input width to 100% */
  font-size: 1.2rem; /* Increase the font size as needed */
  padding: 15px 20px; /* Increase padding for inputs */
  margin-bottom: 20px; 
}
button {
  font-size: 1.5rem; /* Increase the font size for the button */
  padding: 15px 0; /* Increase padding for the button */
}
 
</style>
</head>
<body>
  <%@ include file="navbar.jsp" %>
  <h3 align=right>Hi ${cname}</h3>
      <br>
      <br>

<h3 align=center><u>Update Profile</u></h3>

<form method="post" action="update">

<table align=center>

<tr>
<td><label>Name</label></td> 
<td>
<input type="text" name="name" required="required" value="${cus.name}"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
${cus.gender}
</td>
</tr>

<tr><td></td></tr>



<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required  value="${cus.email}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required  value="${cus.password}" /></td>
</tr>

<tr><td></td></tr>





<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Update" class="button"></td>
</tr>

</table>

</form>
      </section>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <!-- Your script to toggle the menu -->
      <script src="your-script.js"></script> 
</body>
</html>