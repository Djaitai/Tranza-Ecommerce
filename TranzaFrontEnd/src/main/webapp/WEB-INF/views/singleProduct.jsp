<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">




<!-- Newly added and then work check it back and compare it to otheras links -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<%@ include file="./header/megaMenu.jsp" %>

<div class="container">


<div class="row">




							<c:forEach items="${product }" var="list">

								<div class="col-lg-4 col-md-6 mb-4">
									<div class="card h-100">
										<a href="#"><img class="d-block img-fluid"
											style="width: 400px; height: 145px"
											src="${contextRoot }/resources/images/${list.prodCode}.jpg"
											alt="First slide"></a>
											<hr style="height: 5px; background-color: #B83227;">
										<div class="card-body">
											<h4 class="card-title">
												<a href="#">${list.productName }</a>
											</h4>
											<h5>
												<strong>${list.unitPrice } FCFA-/-</strong>
											</h5>
											<p class="card-text">${list.productDescription }</p>
										</div>
										
										
										
										<!-- Display product quantity based on product available in stock -->
				<c:choose>

					<c:when test="${list.quantity < 1 }">
						<h6>
							Qty. Disponible: <span style="color: #FF3031">En rupture de stock!</span>
						</h6>
					</c:when>

					<c:otherwise>
						<h6 style="color: #019031">Qty. Disponible: ${list.quantity }
							- en stock</h6>
					</c:otherwise>


				</c:choose>

				<!-- Disable add to cart button if no stock available -->
				<security:authorize access="hasAuthority('USER')">
					<c:choose>
	
						<c:when test="${list.quantity < 1 }">
							<a href="javascript:void(0)" class="btn btn-warning disabled"><del>
									<span class="glyphicon glyphicon-shopping-cart"></span>Ajouter au panier
							</del> </a>
							
							<!-- NEWLY ADDED CHECK TOMORROW IF NOT WORKING -->
							<a href="${contextRoot }/show/${list.productId }/product/"
								class="btn btn-outline-info"> <span
								class="glyphicon glyphicon-eye-open"></span>Details
							</a>
							
						</c:when>
	
						<c:otherwise>
						<!-- NEWLY ADDED CHECK TOMORROW IF NOT WORKING -->
							<a href="${contextRoot }/show/${list.productId }/product/"
								class="btn btn-outline-info"> <span
								class="glyphicon glyphicon-eye-open"></span>Details
							</a>
							
							
							<a href="${contextRoot }/cart/add/${list.productId }/product"
								class="btn btn-warning"> <span
								class="glyphicon glyphicon-shopping-cart"></span>Ajouter au panier
							</a>
						</c:otherwise>
	
	
					</c:choose>
				</security:authorize>
				
				<security:authorize access="hasAuthority('ADMIN')">
				
					<a href="${contextRoot }/manage/${list.productId }/product"
								class="btn btn-warning"> <span
								class="glyphicon glyphicon-pencil"></span>Editez
							</a>
				</security:authorize>

				<a href="${contextRoot }/show/all/products" class="btn btn-success">Retour</a>
										
										
										<div class="card-footer">
											<%-- <h4 class="card-text" style="color: #E71C23;">Nombre de vue: ${list.views }</h4> --%>
											<small class="text-muted">&#9733; &#9733; &#9733;
												&#9733; &#9734;</small>
										</div>
									</div>
								</div>

							</c:forEach>
							
							</div> <!-- row -->
</div>
		
</body>
</html>