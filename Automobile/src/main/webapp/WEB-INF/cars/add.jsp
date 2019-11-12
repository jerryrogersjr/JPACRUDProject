<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/css/bootstrap.css"
	rel="stylesheet">
<title>Add Car</title>
</head>
<body>

	<div>
		<h3>Build New Car (Add Car)</h3>
		<br>
		<div>
			<form action="addCar.do" method="POST">
				Make / Model: <input type="text" name="makeModel"
					placeholder="enter make and model" required="required" /><br>

				MPG: <input type="text" name="mpg" required="required" /><br>

				Cylinders: <input type="text" name="cylinders" required="required" /><br>

				Displacement: <input type="text" name="displacement"
					required="required" /><br> Horsepower: <input type="text"
					name="horsepower" required="required" /><br> Weight: <input
					type="text" name="weight" required="required" /><br>

				Acceleration: <input type="text" name="acceleration"
					required="required" /><br> Year: <input type="text"
					name="year" required="required" /><br> Origin: <input
					type="text" name="origin" required="required" /><br> <input
					class="btn btn-warning" type="submit" value="Add Car" />
			</form>
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