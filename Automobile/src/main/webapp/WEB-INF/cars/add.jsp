<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/webjars/org.webjars/bootstrap/4.3.1/css/bootstrap.css"
	rel="stylesheet">
<title>Add Car</title>
</head>
<body>

	<div>
		<h3>Build New Car (Add Car)</h3>
		<br>
		<div class=" container form-goup jumbotron" >
	

			<form action="addCar.do" method="POST">
			<div>
			 <label for="makeModel">Make and Model</label>
				<input type="text" class="form-control" name="makeModel"
					placeholder="enter make and model" required="required" /><br>
			 <label for="mpg">Miles Per Gallon (mpg)</label>
				<input type="number" class="form-control" name="mpg"
					placeholder="enter fuel economy (mpg)" required="required" /><br>
			 <label for="cylinders">Total Cylinders</label>
				<input type="number" class="form-control" name="cylinders"
					placeholder="enter engine cyliner total" required="required" /><br>
			 <label for="displacement">Displacement</label>
				<input type="number" class="form-control" name="displacement"
					placeholder="enter engine displacement" required="required" /><br>
			 <label for="horsepower">Horsepower</label>
				<input type="number" class="form-control" name="horsepower"
					placeholder="enter total horsepower" required="required" /><br>
			 <label for="weight">Weight</label>
				<input type="number" class="form-control" name="weight"
					placeholder="enter vehicle gross weight" required="required" /><br>
			 <label for="acceleration">Acceleration</label>
				<input type="number" class="form-control" name="acceleration"
					placeholder="enter acceleration (0-60 mph)" required="required" /><br>
			 <label for="year">Year</label>
				<input type="number" class="form-control" name="year"
					placeholder="enter year" required="required" /><br>
			 <label for="origin">Origin</label>
				<input type="text" class="form-control" name="origin"
					placeholder="enter origin country" required="required" /><br>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
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