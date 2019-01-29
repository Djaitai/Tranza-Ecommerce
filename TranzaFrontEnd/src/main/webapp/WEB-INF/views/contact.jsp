<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%-- <spring:url var="css" value="resources/css" />
<spring:url var="js" value="resources/js" />
<spring:url var="images" value="resources/images" /> --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tranza ${title }</title>


<!-- Bootstrap core JavaScript -->
<script src="${js }/jquery.min.js"></script>
<script src="${js }/bootstrap.bundle.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="${css }/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css }/shop-homepage.css" rel="stylesheet">

</head>
<body>


	<%@ include file="./header/header.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-lg-12">Vous pouvez nous contacter ici</div>
		</div>
	</div>
	<%@ include file="./header/footer.jsp"%>
</body>
</html>