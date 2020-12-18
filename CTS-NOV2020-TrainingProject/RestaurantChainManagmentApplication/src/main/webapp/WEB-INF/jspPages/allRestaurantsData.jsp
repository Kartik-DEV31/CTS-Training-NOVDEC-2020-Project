<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="<c:url value="/css/style.css" />" rel="stylesheet">

<html>
<body>

	<h2>All Restaurants Available</h2>
<form  id="homepage" action="/managmentApplication/">
  <button class="homeButton" type="submit" >Home</button>
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
				<th>Update The Owner's Name</th>
				<th>Delete The Owner</th>
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
							<form action="updateOwnerName" method="post">
								<input type="text" name="ownerName" 
									placeholder="Enter New Owner Name..." /> <input type="hidden"
									name="oldOwnerName" value="${data.restaurantOwner}" /> <input
									type="hidden" name="id" value="${data.id}" /> <input
									type="submit" value="Update" />

							</form>
						</td>

						<td>
							<form action="deleteOwner" method="post">
								<input type="submit" name="delete_user" value="Delete" /> <input
									type="hidden" name="user" value="${data.id}" />
							</form>
						</td>



					</tr>
				</c:forEach>





			</tr>
		</tbody>
	</table>
</body>
</html>