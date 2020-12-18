<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
	<h2>Employee Data</h2>


	<table border="1">

		<th>Id</th>
		<th>Name</th>
		<th>Salary</th>

		<c:forEach var="emp" items="${employee}" varStatus="status">
			<tr>
				<td>${emp.id}</td>	
				<td>${emp.name}</td>
				<td>${emp.salary}</td>

			</tr>
		</c:forEach>
	</table>
	
	
	
</body>
</html>