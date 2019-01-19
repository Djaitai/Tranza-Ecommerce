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



<!-- Bootstrap core CSS -->
<link href="${css }/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css }/shop-homepage.css" rel="stylesheet">

<!-- Bootstrap theme -->
<link href="${css }/bootstrap.them.min.css" rel="stylesheet">


<script>
	window.menu = '${title }'; // Not Working
	window.contextRoot = '${contextRoot}'
</script>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>


<!-- Newly added and then work check it back and compare it to other links -->
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

	<div class="wrapper">

		<%@ include file="./header/menu.jsp" %>
		<!--  Page content -->

		<div class="content">

			<!-- Loading home page -->
			<%--   <c:if test="${userClickHome == true }">
 <%@ include file="home.jsp" %>
 </c:if> --%>

			<!-- Loading About us -->
			<c:if test="${userClickAbout == true }">
				<%@ include file="about.jsp"%>
			</c:if>

			<!-- Loading contact us -->
			<c:if test="${userClickContact == true }">
				<%@ include file="contact.jsp"%>
			</c:if>


			<!-- Loading only when user click ...  -->
			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts == true }">
				<%@ include file="listProducts.jsp"%>
			</c:if>


			<!-- Loading Single page product -->
			<c:if test="${userClickShowProduct == true }">
				<%@ include file="viewProduct.jsp"%>
			</c:if>

			<!-- Loading only when user click manage products -->
			<c:if test="${userClickManageProducts == true }">
				<%@include file="manageProduct.jsp"%>
			</c:if>





			<!-- Page Content -->
			<div class="container">

				<div class="row">

					<div class="col-lg-3">

						<h1 class="my-4">Tranza</h1>
						<%@ include file="./header/sidebar.jsp"%>

					</div>
					<!-- /.col-lg-3 -->

					<div class="col-lg-9">

						<div id="carouselExampleIndicators" class="carousel slide my-4"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
							</ol>
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active">
									<img class="d-block img-fluid"
										style="width: 900px; height: 400px"
										src="resources/images/hero.jpg" alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid"
										style="width: 900px; height: 400px"
										src="resources/images/slideing1.jpg" alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid"
										style="width: 900px; height: 400px"
										src="resources/images/slider2.jpg" alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid"
										style="width: 900px; height: 400px"
										src="resources/images/slide7.jpg" alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid"
										style="width: 900px; height: 400px"
										src="resources/images/slide6.jpg" alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid"
										style="width: 900px; height: 400px"
										src="resources/images/slide5.jpg" alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid"
										style="width: 900px; height: 400px"
										src="resources/images/slide4.jpg" alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid"
										style="width: 900px; height: 400px"
										src="resources/images/slide3.jpg" alt="Third slide">
								</div>
							</div>
							<a class="carousel-control-prev"
								href="#carouselExampleIndicators" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleIndicators" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>

						<div class="row">

							<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<a href="#"><img class="d-block img-fluid"
										style="width: 400px; height: 145px"
										src="resources/images/banner08.jpg" alt="First slide"></a>
									<div class="card-body">
										<h4 class="card-title">
											<a href="#">T-Shirt</a>
										</h4>
										<h5>$24.99</h5>
										<p class="card-text">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Amet numquam aspernatur!</p>
									</div>
									<div class="card-footer">
										<small class="text-muted">&#9733; &#9733; &#9733;
											&#9733; &#9734;</small>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<a href="#"><img class="d-block img-fluid"
										style="width: 400px; height: 145px"
										src="resources/images/product06.jpg" alt="First slide"></a>
									<div class="card-body">
										<h4 class="card-title">
											<a href="#">Shirt</a>
										</h4>
										<h5>$24.99</h5>
										<p class="card-text">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Amet numquam aspernatur! Lorem
											ipsum dolor sit amet.</p>
									</div>
									<div class="card-footer">
										<small class="text-muted">&#9733; &#9733; &#9733;
											&#9733; &#9734;</small>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<a href="#"><img class="d-block img-fluid"
										style="width: 400px; height: 145px"
										src="resources/images/product07.jpg" alt="First slide"></a>
									<div class="card-body">
										<h4 class="card-title">
											<a href="#">Blazer</a>
										</h4>
										<h5>$24.99</h5>
										<p class="card-text">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Amet numquam aspernatur!</p>
									</div>
									<div class="card-footer">
										<small class="text-muted">&#9733; &#9733; &#9733;
											&#9733; &#9734;</small>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<a href="#"><img class="d-block img-fluid"
										style="width: 400px; height: 145px"
										src="resources/images/iPad.jpg" alt="First slide"></a>
									<div class="card-body">
										<h4 class="card-title">
											<a href="#">Item Four</a>
										</h4>
										<h5>$24.99</h5>
										<p class="card-text">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Amet numquam aspernatur!</p>
									</div>
									<div class="card-footer">
										<small class="text-muted">&#9733; &#9733; &#9733;
											&#9733; &#9734;</small>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<a href="#"><img class="d-block img-fluid"
										style="width: 400px; height: 145px"
										src="resources/images/tablet.jpg" alt="First slide"></a>
									<div class="card-body">
										<h4 class="card-title">
											<a href="#">Item Five</a>
										</h4>
										<h5>$24.99</h5>
										<p class="card-text">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Amet numquam aspernatur! Lorem
											ipsum dolor sit amet.</p>
									</div>
									<div class="card-footer">
										<small class="text-muted">&#9733; &#9733; &#9733;
											&#9733; &#9734;</small>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<a href="#"><img class="d-block img-fluid"
										style="width: 400px; height: 145px"
										src="resources/images/banner08.jpg" alt="First slide"></a>
									<div class="card-body">
										<h4 class="card-title">
											<a href="#">Item Six</a>
										</h4>
										<h5>$24.99</h5>
										<p class="card-text">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Amet numquam aspernatur!</p>
									</div>
									<div class="card-footer">
										<small class="text-muted">&#9733; &#9733; &#9733;
											&#9733; &#9734;</small>
									</div>
								</div>
							</div>

						</div>
						<!-- /.row -->

					</div>
					<!-- /.col-lg-9 -->

				</div>
				<!-- /.row -->

			</div>
			<!-- /.container -->

		</div>

		<%@include file="./header/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js }/jquery.min.js"></script>

		<!-- Jquery validator -->
		<script src="${js}/jquery.validate.js"></script>

		<script src="${js }/bootstrap.bundle.min.js"></script>

		<!-- DataTable plugin -->
		<script src="${js }/jquery.dataTables.js"></script>

		<!-- Self coded js file -->
		<script src="<c:url value="/resources/js/mainApp.js" />"></script>
		<%-- <script src="${js }/myApp.js"> --%>
		</script>

	</div>
</body>

</body>
</html>