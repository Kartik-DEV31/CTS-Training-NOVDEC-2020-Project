<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
 


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OwnerDashboard</title>
<link href="<c:url value="/css/ownerDashboard.css" />" rel="stylesheet">
</head>
<body>
<div id = "topBoard">
Welcome ${ownerName}
</div>
<div id="homeButtonDiv">
<form  id="homepage" action="/managmentApplication/">
  <button class="homeButton" type="submit" >Home</button>
</form>
</div>

<div id="leftBoard">

	<form  action="totalEmployeesInResaturants" method="post">
	<input
			type="hidden" name="id" value="${id}" />
		<button id="totalEmployeeButton" type="submit">Total Employees</button>
	</form>



	<form id="searchRestaurant" action="findRestaurantForOwner" method="post">
		<input type="text" name="restaurantName" id="search"
			placeholder="Enter Restaurant Name..." size="21" /><br> 
			
			<input
			type="hidden" name="id" value="${id}" />
		<button class="searchButton" type="submit">Search</button>
	</form>



	<form  action="findAllRestaurantForOwner" method="post">
	<input type="hidden" name="id" value="${id}" />
		<button id="allrestaurants"  type="submit">All the Restaurants</button>
	</form>


</div>	


<c:if test="${not empty data}">
		
			<table class="container">

				<thead>
					<tr>
						
					
						<th>Restaurant</th>
						<th>Food Served</th>
						<th>Employees Working</th>
						<th>Revenue Generated(Monthly)</th>
						<th>Update The Revenue</th>
						<th>Update Employee Count</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="data" items="${data}" varStatus="status">
							<tr>
							
								
								<td>
						${data.restaurantName}<br>

									</td>


								<td>${data.restaurantType}
										
									</td>
								<td>${data.employeeCount}</td>
								<td>${data.revenue}<br>
										</td>
							<td>
									<form action="updateRevenue" method="post">
										<input type="hidden" name="restaurantName"
											value="${data.restaurantName}" /><br> <input
											type="text" name="updatedRevenue"
											placeholder="Enter Revenue..." /> <input type="hidden"
											name="id" value="${data.id}" /><br> <input
											type="submit" value="Update" /><br> 

									</form>
								</td>
							<td>
									<form action="updatedEmployeeCount" method="post">
										<input type="hidden" name="restaurantName"
											value="${data.restaurantName}" /><br><input
											type="text" name="updatedEmployeeCount"
											placeholder="Enter Employee Count ..." /><br> <input
											type="hidden" name="id" value="${data.id}" /><br> <input
											type="submit" name="update" value="Update" /><br>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
		

</c:if>


<div id="totalEmployee">
<c:if test="${not empty count}">
<b>Total Employee Count : ${count}</b>
</c:if>
</div>
<div id = "searchError">
<c:if test="${not empty exception}">
 <b>${exception}</b>
 </c:if>
</div>
</body>
</html>