<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/css/bootstrap.css"
	rel="stylesheet">
<title>Selected Automobile</title>
<%@include file="/WEB-INF/nav.jsp"%>
</head>
<body>
	<br>
	<div align="center">
		<form action="getCars.do" method="GET">
			<input type="number" name="id" placeholder="enter car ID"
				required="required" /> <input type="submit" class="btn btn-primary"
				value="Search" />
		</form>
	</div>
	<div class=" container form-goup jumbotron">

		<c:choose>
			<c:when test="${not empty car }">

				<h3>
					<strong>Selected Car</strong>
				</h3>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Car</th>
							<th scope="col">MPG</th>
							<th scope="col">Cylinders</th>
							<th scope="col">Displacement</th>
							<th scope="col">Horsepower</th>
							<th scope="col">Weight</th>
							<th scope="col">Acceleration</th>
							<th scope="col">Year</th>
							<th scope="col">Origin</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">${car.id}</th>
							<td>${car.makeModel}</td>
							<td>${car.mpg}</td>
							<td>${car.cylinders}</td>
							<td>${car.displacement}</td>
							<td>${car.horsepower}</td>
							<td>${car.weight}</td>
							<td>${car.acceleration}</td>
							<td>${car.year}</td>
							<td>${car.origin}</td>
						</tr>
					</tbody>
				</table>

				<hr>

				<h3>Update Automobile</h3>
				<div class=" container form-goup jumbotron">
					<form action="addCar.do" method="POST">
						<div>
							<label for="makeModel">Make and Model</label> <input type="text"
								class="form-control" name="makeModel" value="${car.makeModel}" /><br>
							<label for="mpg">Miles Per Gallon (mpg)</label> <input
								type="number" class="form-control" name="mpg" value="${car.mpg}" /><br>
							<label for="cylinders">Total Cylinders</label> <input
								type="number" class="form-control" name="cylinders"
								value="${car.cylinders}" /><br> <label for="displacement">Displacement</label>
							<input type="number" class="form-control" name="displacement"
								value="${car.displacement}" /><br> <label for="horsepower">Horsepower</label>
							<input type="number" class="form-control" name="horsepower"
								value="${car.horsepower}" /><br> <label for="weight">Weight</label>
							<input type="number" class="form-control" name="weight"
								value="${car.weight}" /><br> <label for="acceleration">Acceleration</label>
							<input type="number" class="form-control" name="acceleration"
								value="${car.acceleration}" /><br> <label for="year">Year</label>
							<input type="number" class="form-control" name="year"
								value="${car.year}" /><br> <label for="origin">Origin</label>
							<input type="text" class="form-control" name="origin"
								value="${car.origin}" /><br>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>

				<hr>
				<div align="center">
					<form action="deleteCar.do" method="POST">
						<input type="hidden" value="${car.id}" name="id"> <br>
						<input class="btn btn-danger" type="submit" value="Delete Car">
					</form>
				</div>
			</c:when>
			<c:otherwise>
				<h4 align="center">Automobile Not Found</h4>
			</c:otherwise>
		</c:choose>
	</div>
	<br>
	<footer class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<p>Copyright © theRealMrRogers. All rights reserved.</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars.bower/jquery/3.3.1/dist/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars/popper.js/1.15.0/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>