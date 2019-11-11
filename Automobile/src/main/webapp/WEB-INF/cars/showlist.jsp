<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<h3>
			<strong>Selected Vehicle </strong>
			<table>
				<tr>
				<td>${car.makeModel}</td>
				</tr>
				<tr>
				<td>Origin : ${car.origin}</td>
				</tr>
				<tr>
				<td>MPG: ${car.mpg}</td>
				</tr>
			</table>
		</h3>



	</div>

</body>
</html>