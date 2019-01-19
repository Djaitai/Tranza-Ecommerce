<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>



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
				
					<security:authorize access="hasAuthority('ADMIN')">
						<li id="manageProducts" class="nav-item"><a class="nav-link"href="${contextRoot }/manage/products">Manage Product</a></li>
					</security:authorize>
				</ul>
					
					
					
				
				<ul class="nav navbar-nav navbar-right">
				
					<security:authorize access="isAnonymous()">
					<li id="register" class="nav-item"><a class="nav-link"href="${contextRoot }/register">Sign Up</a></li>
					<li id="login" class="nav-item"><a class="nav-link"href="${contextRoot }/login">Login</a></li>
					</security:authorize>
					
					<security:authorize access="isAuthenticated()">
						<li id="login" class="dropdown">
							<a class="btn btn-warning dropdown-toggle 
								"href="javascript:void(0)" id="dropdownMenu1"
									data-toggle="dropdown"> ${userModel.fullName }
									<span class="caret"></span>
									</a>
								<ul class="dropdown-menu">
								<security:authorize access="hasAuthority('USER')">
										<li>
											<a href="${contextRoot }/cart">
												<span class="glyphicon glyphicon-shopping-cart"></span>
												<span class="badge">${userModel.cart.cartLines }</span>
												- &#8377; ${userModel.cart.grandTotal }
											</a>
										</li>
										<li class="divider" role="separator"></li>
									</security:authorize>
									<li>
										<a href="${contextRoot }/perform-logout">Logout</a>
									</li>
								</ul>
						</li>
					</security:authorize>
				</ul>
			</div>
		</div>
	</nav>
	
	
	<script>
		window.userRole = '${userModel.role}';
	</script>
	
</body>
</html>