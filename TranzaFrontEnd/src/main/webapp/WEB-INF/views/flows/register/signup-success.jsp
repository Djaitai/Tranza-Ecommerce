<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="resources/css" />
<spring:url var="js" value="resources/js" />
<spring:url var="images" value="resources/images" />


<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<meta charset="ISO-8859-1">
<title>Tranza-ecommerce - ${title }</title>

<!-- Newly added and then work check it back and compare it to otheras links -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
	html{
		font-size: 100%
	}

</style>

</head>
<body>
		<%@ include file="../shared/flows-header.jsp" %>
		

<div class="container">

	<div class="row">
	
		
		<div class="col-sm-offset-2 col-sm-12">
			<div class="text-center">		
				<h1>Bienvenue!</h1>
				<h2><strong>http://www.tranza-ecommerce.ci</strong></h2>
				<h6>Vous pouvez utiliser votre adresse e-mail comme nom d'utilisateur pour vous connecter!</h6>
				<div>
					<a href="${contextRoot}/login" class="btn btn-lg btn-success">Se Connecter</a>
				</div>
			</div>
		</div>
	
	
	</div>
	
</div> 
		
		
	
 <%@ include file="../shared/flows-footer.jsp" %>
</body>

</html>