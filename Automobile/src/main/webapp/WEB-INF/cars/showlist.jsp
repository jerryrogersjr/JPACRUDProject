<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<c:if test="${not empty cars }">
			<ul>
				<c:forEach var="car" items="${cars}">
					<li><a href="getCars.do?id=${car.id }">${car.makeModel}</a></li>
				</c:forEach>
			</ul>
		</c:if>
	</div>

</body>
</html>