<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<%-- <spring:url var="images" value="/resources/images" /> --%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>

<!-- Allow disable and enable product -->
<meta name="_csrf" content="${_csrf.token }">
<meta name="_csrf_header" content="${_csrf.headerName }">

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
>

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




<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="${css}/ecommerce-style.css" rel="stylesheet">

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tranza ecommerce</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>

<style type="text/css">
html {
	font-size: 100%;
}
</style>

<!-- DataTable  -->
<link href="<c:url value="/resources/css/dataTables.bootstrap.css" />"
	rel="stylesheet">

</head>

<!-- Body -->
<body>

	<%@ include file="./header/menu.jsp"%>

	<div class="container">

		<c:if test="${not empty message}">
			<div class="row">

				<div class="col-xs-12 col-md-offset-2 col-md-8">
					<%-- <div class="alert alert-info fade in">${message}</div> --%>

					<div class="alert alert-success alert-dismissible">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${message }

					</div>
				</div>

			</div>
		</c:if>

		<div class="row">

			<div class="col-md-offset-2 col-md-8">

				<div class="panel panel-primary">

					<div class="panel-heading">

						<h4>Product Management</h4>

					</div>

					<div class="panel-body">
						<!-- Form element -->
						<sf:form class="form-horizontal" modelAttribute="product"
							action="${contextRoot }/manage/products" method="POST"
							enctype="multipart/form-data">

							<%-- <div class="form-group">
 								<label class="control-label col-md-4" for="productId">Product ID</label>
								<div class="col-md-8">
									<sf:input type="text" path="productId" class="form-control" id="productId" placeholder="Product ID" />
									<sf:errors path="productId" cssClass="help-block" element="em"></sf:errors>
								</div>
							</div> --%>

							<div class="form-group">
								<label class="control-label col-md-4" for="productName">Product
									Name</label>
								<div class="col-md-8">
									<sf:input type="text" path="productName" class="form-control"
										id="productName" placeholder="Product Name" />
									<sf:errors path="productName" cssClass="help-block"
										element="em"></sf:errors>
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="brand">Brand
									Name</label>
								<div class="col-md-8">
									<sf:input type="text" path="brand" class="form-control"
										id="brand" placeholder="Brand Name" />
									<sf:errors path="brand" cssClass="help-block" element="em" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="productDescription">Product
									description</label>
								<div class="col-md-8">
									<sf:textarea path="productDescription" rows="4"
										class="form-control" id="productDescription" />
									<sf:errors path="productDescription" cssClass="help-block"
										element="em" />
								</div>
							</div>


							<div class="form-group">
								<label class="control-label col-md-4" for="unitPrice">Price</label>
								<div class="col-md-8">
									<sf:input type="number" path="unitPrice" class="form-control"
										id="unitPrice" placeholder="Price" />
									<sf:errors path="unitPrice" cssClass="help-block" element="em" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="quantity">Quantity</label>
								<div class="col-md-8">
									<sf:input type="number" path="quantity" class="form-control"
										id="quantity" placeholder="Quantity" />
								</div>
							</div>

							<!-- File element for image upload -->
							<div class="form-group">
								<label class="control-label col-md-4" for="file">Select
									an Image</label>
								<div class="col-md-8">
									<sf:input type="file" path="file" class="form-control"
										id="file" />
									<sf:errors path="file" cssClass="help-block" element="em" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="categoryId">Select
									Category</label>
								<div class="col-md-8">
									<sf:select class="form-control" id="categoryId"
										path="categoryId" items="${categories }" itemLabel="catName"
										itemValue="categoryId" />
									<c:if test="${product.categoryId == 0 }">
										<div class="text-right">

											<br>
											<button type="button" data-toggle="modal"
												data-target="#myCategoryModal"
												class="btn btn-warning btn-xs">Add New Category</button>
										</div>
									</c:if>
								</div>
							</div>

							<div class=" form-group">
								<div class="col-md-offset-4 col-md-8">
									<input type="submit" name="submit" id="submit" value="Submit"
										class="btn btn-primary" />
								</div>
							</div>

							<!--  Hidden fields -->
							<sf:hidden path="productId" />
							<sf:hidden path="prodCode" />
							<sf:hidden path="supplierId" />
							<sf:hidden path="iSactive" />
							<sf:hidden path="purchase" />
							<sf:hidden path="views" />
						</sf:form>

					</div>

				</div>

			</div>

		</div>










		<div class="row">

			<div class="col-xs-12">
				<h3>Available Products</h3>
				<hr style="background-color: #B83227; height: 5px;" />
			</div>


			<div class="col-xs-12">

				<div style="overflow: auto;">
					<!-- Product table for Admin -->
					<table id="adminProductTable"
						class="table table-striped table-bordered">

						<thead>
							<tr>
								<th>Product Id</th>
								<th>&#160;</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Qty. Avail</th>
								<th>Unit Price</th>
								<th>Activate</th>
								<th>Edit</th>
							</tr>
						</thead>


						<tfoot>
							<tr>
								<th>Product Id</th>
								<th>&#160;</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Qty. Avail</th>
								<th>Unit Price</th>
								<th>Activate</th>
								<th>Edit</th>
							</tr>
						</tfoot>


					</table>
				</div>

			</div>

		</div>


























		<!-- Modal -->
		<div class="modal fade" id="myCategoryModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add New Category</h4>
					</div>
					<div class="modal-body">
						<!--  Category form -->
						<sf:form id="categoryForm" class="form-horizontal"
							modelAttribute="category" action="${contextRoot}/manage/category"
							method="POST">

							<%-- <div class="form-group">
								<label class="control-label col-md-4" for="catName">Category ID</label>
								<div class="col-md-8 validate">
									<sf:input type="text" path="categoryId" id="catName" class="form-control"
										placeholder="Category Name" />
								</div>
							</div> --%>


							<div class="form-group">
								<label class="control-label col-md-4" for="catName">Category
									Name</label>
								<div class="col-md-8 validate">
									<sf:input type="text" path="catName" id="catName"
										class="form-control" placeholder="Category Name" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="catDescription">Category
									Description</label>
								<div class="col-md-8 validate">
									<sf:textarea path="catDescription" id="catDescription" cols=""
										rows="5" class="form-control"
										placeholder="Enter category description here!" />
								</div>
							</div>


							<div class="form-group">
								<div class="col-md-offset-4 col-md-4">
									<input type="submit" name="submit" value="Add Category"
										class="btn btn-warning" />
								</div>
							</div>
						</sf:form>
					</div>
				</div>
			</div>
		</div>












	</div>

	<!-- Jquery validator -->
	<script src="${js}/jquery.validate.js"></script>

	<!-- DataTable plugin -->
	<script src="<c:url value="/resources/js/jquery.dataTables.js" />"></script>

	<!-- Self coded js file -->
	<script src="<c:url value="/resources/js/mainApp.js" />"></script>

	<script src="<c:url value="/resources/js/dataTables.bootstrap4.js" />"></script>

	<!-- BootBox -->
	<script src="${js}/bootbox.min.js"></script>

	<!-- Self coded js file -->
	<%-- <script src="<c:url value="/resources/js/mainApp.js" />"></script> --%>

</body>
</html>