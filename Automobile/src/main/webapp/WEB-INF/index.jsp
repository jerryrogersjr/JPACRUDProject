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
<%@include file="/WEB-INF/nav.jsp"%>
</head>
<body>
	<br>
	<div class="container jumbotron">

		<h1 align="center">
			<strong>JPA CRUD Project</strong>
		</h1>
		<br>
		<p align="center">This project was an individual project with a
			focus on deployment to AWS (Amazon Web Services) using CRUD (create,
			read, update, destroy) with a simple database. The database is some
			general data on vehicles.</p>
		<br>
		<p align="center">
			<strong><em>Begin Your Exploration Below</em></strong>
		</p>
	</div>
	<div class="container p-3 mb-2 bg-light text-dark">
		<h3 align="center">Automobiles</h3>
		<hr>
		<div align="center">
			<h4>Find Cars by ID Number</h4>
			<form action="getCars.do" method="GET">
				<input type="number" name="id" placeholder="enter car ID"
					required="required" /> <input type="submit"
					class="btn btn-primary" value="Search" />
			</form>
		</div>
		<hr>
		<div>
			<div align="center">
				<h4>Show Full List of Cars</h4>
				<form action="listCars.do" method="GET">
					<input type="submit" class="btn btn-primary" value="List Cars" />
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