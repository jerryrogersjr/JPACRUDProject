<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/css/bootstrap.css"
	rel="stylesheet">
<title>Automobile Data</title>
</head>
<body>
<div>

</div>
	<hr>
	<div>
		<c:choose>
			<c:when test="${not empty cars}">
				<h4 align="center">
					<strong><em>List of Cars</em></strong>
				</h4>
				<table class="table table-hover table-bordered table-dark">
						<thead>
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Car</th>
								<th scope="col">MPG</th>
								<th scope="col">Cylinders</th>
								<th scope="col">Displacement</th>
								<th scope="col">Horsepower</th>
								<th scope="col">Weight</th>
								<th scope="col">0-60 (sec)</th>
								<th scope="col">Year</th>
								<th scope="col">Origin</th>
							</tr>
						</thead>
					<c:forEach var="cars" items="${cars}">
					<tbody>
						<tr>
							<th scope="row">${cars.id}</th>
							<td><a href="getCars.do?id=${cars.id}">${cars.makeModel}</a></td>
							<td>${cars.mpg}</td>
							<td>${cars.cylinders}</td>
							<td>${cars.displacement}</td>
							<td>${cars.horsepower}</td>
							<td>${cars.weight}</td>
							<td>${cars.acceleration}</td>
							<td>${cars.year}</td>
							<td>${cars.origin}</td>
						</tr>
						</tbody>
					</c:forEach>
				</table>
			</c:when>
		</c:choose>
	</div>
		<hr>
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