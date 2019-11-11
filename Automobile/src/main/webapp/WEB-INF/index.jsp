<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

</body>
</html>