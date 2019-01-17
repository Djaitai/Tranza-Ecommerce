<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="resources/css" />
<spring:url var="js" value="resources/js" />
<spring:url var="images" value="resources/images" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>


<!-- Custome css -->
<%--  <link href="<c:url value="/resources/css/bootstrap.them1.min.css" />" rel="stylesheet"> --%>

<link href="<c:url value="/resources/css/ecommerce-style.css" />"
	rel="stylesheet">


<!-- DataTable  -->
<link href="<c:url value="/resources/css/dataTables.bootstrap.css" />"
	rel="stylesheet">

<meta charset="ISO-8859-1">
<title>All products</title>

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



<script>
	window.menu = '${title }'; // Not Working
	window.contextRoot = '${contextRoot}'
</script>

</head>
<body>

	<%@ include file="./header/menu.jsp"%>

	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 
	<div class="container "> -->
	<div class="">

		<div class="row">

			<!-- Would be to display sidebar -->
			<div class="col-md-3">

				<%@ include file="./header/sidebar.jsp"%>
			</div>

			<!-- to display the actual products -->
			<div class="col-md-9">

				<!-- Added breadcrumb component-->
				<div class="row">

					<div class="col-lg-12">

						<c:if test="${userClickAllProducts == true}">

							<script>
								window.categoryId = '';
							</script>

							<ol class="breadcrumb">

								<li class="breadcrumb-item active"><a
									href="${contextRoot }/home">Home / </a></li>
								<li class="active">All Products</li>
							</ol>

						</c:if>

						<c:if test="${userClickCategoryProducts == true}">

							<script>
								window.categoryId = '${category.categoryId}';
							</script>

							<ol class="breadcrumb">

								<li><a href="${contextRoot }/home">Home /</a></li>
								<li class="active">Category /</li>
								<li class="active">${category.catName }</li>
							</ol>

						</c:if>

					</div>

				</div>

				<div class="row">
					<div class="col-xs-12">
						<table id="productListTable"
							class="table table-striped table-bordred">

							<thead>
								<tr>
									<th>Image</th>
									<th>Product name</th>
									<th>Brand</th>
									<th>Price</th>
									<th>Quantity</th>
									<!-- <th>Code</th> -->
									<th>Views</th>
									<th></th>

								</tr>
							</thead>

							<tfoot>
								<tr>
									<th>Image</th>
									<th>Product name</th>
									<th>Brand</th>
									<th>Price</th>
									<th>Quantity available</th>
									<!-- <th>Code</th> -->
									<th>Views</th>
									<th></th>
								</tr>
							</tfoot>

						</table>
					</div>
				</div>

			</div>

		</div>

	</div>

	<!-- DataTable plugin -->
	<script src="<c:url value="/resources/js/jquery.dataTables.js" />"></script>

	<!-- Self coded js file -->
	<script src="<c:url value="/resources/js/mainApp.js" />"></script>

	<script src="<c:url value="/resources/js/dataTables.bootstrap4.js" />"></script>




</body>
</html>