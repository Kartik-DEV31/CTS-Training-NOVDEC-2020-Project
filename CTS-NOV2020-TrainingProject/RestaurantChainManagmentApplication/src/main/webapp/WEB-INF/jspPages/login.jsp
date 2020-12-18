<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="<c:url value="/css/login.css" />" rel="stylesheet">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form id="homepage" action="getAllRestaurants">
		<button class="homeButton" type="submit">Admin Center</button>
	</form>
	
<form id="registerpage" action="redirectToRegisterRestaurantJsp">
		<button class="registerButton" type="submit">Register Restaurant</button>
	</form>	


<div class="login">
  <div class="heading">
    <h2>Sign in</h2>
    <form action="authenticate" method="post">

      <div class="input-group input-group-lg">
        <span class="input-group-addon"><i class="fa fa-user"></i></span>
        <input type="text" name="id" class="form-control" pattern="[0-9]" placeholder="Registered Id..." 
        title="Id should only contain numbers e.g. 123456" required>
          </div>

        <div class="input-group input-group-lg">
          <span class="input-group-addon"><i class="fa fa-lock"></i></span>
          <input type="password" name="password" class="form-control" placeholder="Password" required>
        </div>

        <button type="submit" class="float">Login</button>
       </form>
       
       <a href="/managmentApplication/redirectToRegisterOwnerJsp">register as Restaurant Owner ?</a>
       
 		</div>
 </div>


</body>
</html>