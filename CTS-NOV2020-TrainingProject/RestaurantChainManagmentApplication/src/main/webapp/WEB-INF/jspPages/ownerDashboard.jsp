<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- <link href="<c:url value="/css/restaurantRegistration.css" />"
	rel="stylesheet"> -->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form id="ownerDashboard" action="totalEmployeesInResaturants" method="post">
	<input
			type="hidden" name="id" value="${id}" />
		<button class="homeButton" type="submit">Total Employees</button>
	</form>

	<form id="ownerDashboard" action="findRestaurantForOwner" method="post">
		<input type="text" name="restaurantName"
			placeholder="Enter Restaurant Name..." /><br> 
			
			<input
			type="hidden" name="id" value="${id}" />
		<button class="searchButton" type="submit">Search</button>
	</form>

	<form id="ownerDashboard" action="findAllRestaurantForOwner" method="post">
	<input
			type="hidden" name="id" value="${id}" />
		<button class="homeButton" type="submit">All the Restaurants</button>
	</form>

	



<c:if test="${not empty data}">
		<div >
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
										<input type="text" name="restaurantName"
											placeholder="Enter Restaurant Name..." /><br> <input
											type="text" name="updatedRevenue"
											placeholder="Enter Revenue..." /> <input type="hidden"
											name="id" value="${data.id}" /><br> <input
											type="submit" value="Update" /><br> <b>${revenueException}</b>

									</form>
								</td>
							<td>
									<form action="updatedEmployeeCount" method="post">
										<input type="text" name="restaurantName"
											placeholder="Enter Restaurant Name..." /><br> <input
											type="text" name="updatedEmployeeCount"
											placeholder="Enter Employee Count ..." /><br> <input
											type="hidden" name="id" value="${data.id}" /><br> <input
											type="submit" name="update" value="Update" /><br> <b>${countException}</b>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
		</div>

</c:if>

<c:if test="${not empty count}">
<b>Total Employee Count : ${count}</b>
</c:if>
</body>
</html>