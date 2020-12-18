<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="<c:url value="/css/style.css" />" rel="stylesheet">

<html>
<body>

	<h2>All Restaurants Available</h2>
	<form id="homepage" action="/managmentApplication/">
		<button class="homeButton" type="submit">Home</button>
	</form>
	<table class="container">

		<thead>
			<tr>
				<th>Id</th>
				<th>Owner</th>
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
						<td>${data.id}</td>
						<td>${data.restaurantOwner}</td>
						<td><c:forEach var="data2"
								items="${data.specificRestaurantDetails}" varStatus="status">
						
						${data2.restaurantName}<br>
								<br>

							</c:forEach></td>


						<td><c:forEach var="data2"
								items="${data.specificRestaurantDetails}" varStatus="status">
						
						${data2.restaurantType}<br>
								<br>

							</c:forEach></td>

						<td><c:forEach var="data2"
								items="${data.specificRestaurantDetails}" varStatus="status">
						
						${data2.employeeCount}<br>
								<br>

							</c:forEach></td>


						<td><c:forEach var="data2"
								items="${data.specificRestaurantDetails}" varStatus="status">
						
						${data2.revenue}<br>
								<br>

							</c:forEach></td>

						<td>
							<form action="updateRevenue" method="post">
								<input type="text" name="restaurantName"
									placeholder="Enter Restaurant Name..." /><br> <input
									type="text" name="updatedRevenue"
									placeholder="Enter Revenue..." /> <input type="hidden"
									name="id" value="${data.id}" /><br> <input type="submit"
									value="Update" /><br>
									<b>${revenueException}</b>

							</form>
						</td>

						<td>
							<form action="updatedEmployeeCount" method="post">
								<input type="text" name="restaurantName"
									placeholder="Enter Restaurant Name..." /><br> <input
									type="text" name="updatedEmployeeCount"
									placeholder="Enter Employee Count ..." /><br> <input
									type="hidden" name="id" value="${data.id}" /><br> <input
									type="submit" name="update" value="Update" /><br>
									<b>${countException}</b>
							</form>
						</td>



					</tr>
				</c:forEach>





			</tr>
		</tbody>
	</table>
</body>
</html>