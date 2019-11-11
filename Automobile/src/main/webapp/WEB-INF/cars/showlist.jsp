<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Automobile Data</title>
</head>
<body>
	*add/delete/edit functions to be put here
	<hr>
	<div>
		<c:choose>
			<c:when test="${not empty cars}">
				<table>
					<tr>
						<td><strong>List of Cars</strong></td>
					</tr>
					<c:forEach var="cars" items="${cars}">
						<tr>
							<td>ID: ${cars.id}</td>
							<td>Car: <a href="getCars.do?id=${cars.id}">${cars.makeModel}</a></td>
							<td>MPG: ${cars.mpg}</td>
							<td>Cylinders: ${cars.cylinders}</td>
							<td>Displacement: ${car.displacement}</td>
							<td>Horsepower: ${cars.horsepower}</td>
							<td>Weight: ${cars.weight}</td>
							<td>Acceleration: ${cars.acceleration}</td>
							<td>Year: ${cars.year}</td>
							<td>Origin: ${cars.origin}</td>
						</tr>
					</c:forEach>
				</table>
			</c:when>

		</c:choose>

	</div>

</body>
</html>