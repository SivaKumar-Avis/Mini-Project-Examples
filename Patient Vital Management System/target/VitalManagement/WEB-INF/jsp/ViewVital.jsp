
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style>
body {
	background-color: linen;
}

h1 {
	color: maroon;
}

table {
	background-color: palegreen;
}

th {
	color: saddlebrown;
}

td {
	color: black;
}
</style>
</head>
<body>
	<div align="center">
		<h1>LIST OF VITALS</h1>
		<br> <br>
		<table border="4" width="80%" cellpadding="2">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Age</th>
				<th>Sex</th>
				<th>Weight</th>
				<th>Height</th>
				<th>Temperature</th>
				<th>Blood Pressure</th>
				<th>Pulse Rate</th>
				<th>Respiration Rate</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="emp" items="${list}">
				<tr>
					<td>${emp.id}</td>
					<td>${emp.name}</td>
					<td>${emp.age}</td>
					<td>${emp.sex}</td>
					<td>${emp.weight}</td>
					<td>${emp.height}</td>
					<td>${emp.temperature}</td>
					<td>${emp.bloodPressure}</td>
					<td>${emp.pulseRate}</td>
					<td>${emp.respirationRate}</td>
					<td><a href="editemp/${emp.id}">Edit</a></td>
					<td><a href="deleteemp/${emp.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>