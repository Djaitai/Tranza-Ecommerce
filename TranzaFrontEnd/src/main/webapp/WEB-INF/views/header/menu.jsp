<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tranza</title>
</head>
<body>
	<c:set var="contextRoot" value="${pageContext.request.contextPath }" />


<!-- 	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="${contextRoot }/home">Tranza</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="${contextRoot }/home">Home <span class="sr-only">(current)</span>
					</a></li>
					<li id="about" class="nav-item"><a class="nav-link"
						href="${contextRoot }/about">About us</a></li>

					<li id="contact" class="nav-item"><a class="nav-link"
						href="${contextRoot }/contact">Contact us</a></li>
					<%--<li id="listProducts" class="nav-item"><a class="nav-link" href="${contextRoot }/listproducts">View Product</a>--%>
					<li id="listProducts" class="nav-item"><a class="nav-link"href="${contextRoot }/show/all/products">View Product</a></li>
				
					<li id="manageProducts" class="nav-item"><a class="nav-link"href="${contextRoot }/manage/products">Manage Product</a></li>
				</ul>
					
				
				<ul class="nav navbar-nav navbar-right">
					<li id="register" class="nav-item"><a class="nav-link"href="${contextRoot }/register">Sign Up</a></li>
					<li id="login" class="nav-item"><a class="nav-link"href="${contextRoot }/login">Login</a></li>
					<li id="login" class="dropdown">
						<a class="btn btn-warning dropdown-toggle 
							"href="javascript:void(0)" id="dropdownMenu1"
								data-toggle="dropdown">Full Name
								<span class="caret"></span>
								</a>
							<ul class="dropdown-menu">
								<li>
									<a href="${contextRoot }/cart">
										<span class="glyphicon glyphicon-shopping-cart"></span>
										<span class="badge">0</span>
										- &#8377; 0.0
									</a>
								</li>
								<li class="divider" role="separator"></li>
								<li>
									<a href="${contextRoot }/logout">Logout</a>
								</li>
							</ul>
					</li>
				
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>