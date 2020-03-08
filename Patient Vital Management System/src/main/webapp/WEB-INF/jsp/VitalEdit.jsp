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
	background-color: crimson;
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
		<h1>EDIT VITALS</h1>
		<br> <br> <br> <br>
		<form:form method="POST" action="/VitalManagement/editsave">
			<table>
				<tr>
					<td></td>
					<td><form:hidden path="id" /></td>
				</tr>
				<tr>
					<td>Name :</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Age :</td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td>Sex :</td>
					<td><form:input path="sex" /></td>
				</tr>
				<tr>
					<td>Weight :</td>
					<td><form:input path="weight" /></td>
				</tr>
				<tr>
					<td>Height :</td>
					<td><form:input path="height" /></td>
				</tr>
				<tr>
					<td>Temperature :</td>
					<td><form:input path="temperature" /></td>
				</tr>
				<tr>
					<td>Blood Pressure :</td>
					<td><form:input path="bloodPressure" /></td>
				</tr>
				<tr>
					<td>Pulse Rate :</td>
					<td><form:input path="pulseRate" /></td>
				</tr>
				<tr>
					<td>Respiration Rate :</td>
					<td><form:input path="respirationRate" /></td>
				</tr>

				<tr>
					<td></td>
					<td><input type="submit" value="Update" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>