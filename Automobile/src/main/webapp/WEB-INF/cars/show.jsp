<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Selected Automobile</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty car }">
			<h3>
				<strong>Selected Car</strong>
			</h3>

			<ul>
				<li>ID: ${car.id}</li>
				<li>Car: ${car.makeModel}</li>
				<li>MPG: ${car.mpg}</li>
				<li>Cylinders: ${car.cylinders}</li>
				<li>Displacement: ${car.displacement}</li>
				<li>Horsepower: ${car.horsepower}</li>
				<li>Weight: ${car.weight}</li>
				<li>Acceleration: ${car.acceleration}</li>
				<li>Year: ${car.year}</li>
				<li>Origin: ${car.origin}</li>
			</ul>
			<hr>

			<h3>Update Automobile</h3>


			<form action="updateCar.do" method="POST">
				<input
					type="hidden" value="${car.id}" name="id"/>
				<br> 
				Make / Model: <input
					type="text" value="${car.makeModel}" name="makeModel"/> <br>
				MPG: <input type="text" value="${car.mpg}"
					name="mpg"/> <br> 
				Cylinders: <input type="text" value="${car.cylinders}" name="cylinders"/>
				<br> 
				Displacement: <input
					type="text" value="${car.displacement}" name="displacement"/>
				<br> 
				Horsepower: <input
					type="text" value="${car.horsepower}" name="horsepower"> <br>
				Weight: <input type="text"
					value="${car.weight}" name="weight"/> <br> 
				Acceleration: <input type="text"
					value="${car.acceleration}" name="accerleration"/> <br>
				Year: <input type="text"
					value="${car.year}" name="year"/> <br> 
				Origin <input type="text"
					value="${car.origin}" name="origin"/> <br> 
					<input
					type="submit" value="Update Car">
			</form>

			<hr>
			<form action="deleteCar.do" method="POST">
				 <input type="hidden" value="${car.id}"
					name="id"> <br> <input type="submit"
					value="Delete Car">
			</form>
		</c:when>
		<c:otherwise>Automobile Not Found</c:otherwise>
	</c:choose>

</body>
</html>