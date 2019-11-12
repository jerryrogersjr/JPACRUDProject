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
<title>Automobile-DB</title>
</head>
<body>
	<div>
		<h3>Automobiles</h3>
		<hr>
		<div>
			<h4>Find Car By Id</h4>
			<form action="getCars.do" method="GET">
				<input type="text" name="id" /> <input type="submit"
					value="Find Car" />
			</form>
		</div>
		<hr>
		<div>
			<h4>Show List of Cars</h4>
			<div>
				<form action="listCars.do" method="GET">
					<input type="submit" value="Show Cars" />
				</form>
			</div>
			<hr>
			<div>
				<h4>Add New Car</h4>
				<form action="addCar.do" method="GET">
					<input type="submit" value="Add Car" />
				</form>
			</div>
		</div>
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