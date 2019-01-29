<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tranza-ecommerce</title>



<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

<!-- Newly added and then work check it back and compare it to otheras links -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

	<%@ include file="./header/menu.jsp"%>

	<div class="container">

		<!-- Breadcrumb -->
		<div class="row">

			<div class="col-xs-12">
				<ol class="breadcrumb">
					<li><a href="${contextRoot }/home">Home</a></li>
					<li><a href="${contextRoot }/show/all/products">Produits</a></li>
					<li class="active">${product.productName }</li>
				</ol>
			</div>



		</div>


		<div class="row">
			<!-- Display the product image -->
			<div class="col-xs-12 col-sm-4">
				<div class="thumbnail">

					<img alt="No image"
						src="${contextRoot }/resources/images/${product.prodCode}.jpg"
						class="img img-responsive" />
					<%-- <img alt="No image" src="${images }/${product.prodCode}.jpg" class="img img-responsive" /> --%>
				</div>
			</div>

			<!-- Display the product description -->
			<div class="col-xs-12 col-sm-8">
				<h3>${product.productName}</h3>
				<hr>

				<p>${product.productDescription }</p>
				<hr>

				<h4>
					Price: <strong> ${product.unitPrice } CFA /-</strong>
				</h4>
				<hr style="height: 5px; background-color: #B83227;">


				<!-- Display product quantity based on product available in stock -->
				<c:choose>

					<c:when test="${product.quantity < 1 }">
						<h6>
							Qty. Disponible: <span style="color: #FF3031">En rupture de stock!</span>
						</h6>
					</c:when>

					<c:otherwise>
						<h6 style="color: #019031">Qty. Disponible: ${product.quantity }
							- en stock</h6>
					</c:otherwise>


				</c:choose>

				<!-- Disable add to cart button if no stock available -->
				<security:authorize access="hasAuthority('USER')">
					<c:choose>
	
						<c:when test="${product.quantity < 1 }">
							<a href="javascript:void(0)" class="btn btn-warning disabled"><del>
									<span class="glyphicon glyphicon-shopping-cart"></span>Ajouter au chariot
							</del> </a>
						</c:when>
	
						<c:otherwise>
							<a href="${contextRoot }/cart/add/${product.productId }/product"
								class="btn btn-warning"> <span
								class="glyphicon glyphicon-shopping-cart"></span>Ajouter au chariot
							</a>
						</c:otherwise>
	
	
					</c:choose>
				</security:authorize>
				
				<security:authorize access="hasAuthority('ADMIN')">
				
					<a href="${contextRoot }/manage/${product.productId }/product"
								class="btn btn-warning"> <span
								class="glyphicon glyphicon-pencil"></span>Editez
							</a>
				</security:authorize>

				<a href="${contextRoot }/show/all/products" class="btn btn-success">Retour</a>

			</div>

		</div>


	</div>

</body>
</html>