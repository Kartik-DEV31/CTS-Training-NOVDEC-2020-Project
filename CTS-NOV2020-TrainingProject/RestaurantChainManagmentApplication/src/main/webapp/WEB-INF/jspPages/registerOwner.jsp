<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <link href="<c:url value="/css/ownerRegistration.css" />" rel="stylesheet">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restaurant Registration</title>
</head>
<body>




<div class="user">
<form  id="homepage" action="/managmentApplication/">
  <button class="homeButton" type="submit" onclick="/">Home</button>
</form>
    <header class="user__header">
        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3219/logo.svg" alt="" />
    </header>
    
    <form class="form" action="addOwner" method="post">
        <div class="form__group">
            <input type="text"  name="id"  pattern="[0-9]" placeholder="Owner id..." class="form__input" required />
        </div>
        
        <div class="form__group">
            <input type="text" name="owner" placeholder="Owner's Name..." class="form__input"  required/>
        </div>
        
        <div class="form__group">
            <input type="password" name="password" placeholder="Password" class="form__input" required />
        </div>
        
        <button class="btn" type="submit">Register</button>
    </form>
    <b>${RegistrationException}</b>
</div>


</body>
</html>