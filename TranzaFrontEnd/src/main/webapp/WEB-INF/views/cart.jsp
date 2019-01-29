<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="resources/css" />
<spring:url var="js" value="resources/js" />
<spring:url var="images" value="resources/images" />>


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


<script>
	window.menu = '${title }'; // Not Working
	window.contextRoot = '${contextRoot}'
</script>



<!-- Bootstrap core CSS -->
<link href="${css }/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css }/shop-homepage.css" rel="stylesheet">

<!-- Bootstrap theme -->
<link href="${css }/bootstrap.them.min.css" rel="stylesheet">




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


<%-- <c:if test="${userClickShowCart == true }">
				<%@include file="cart.jsp"%>
			</c:if> --%>

 <%@ include file="./header/menu.jsp" %> 
<c:set var="availableCount" value="${userModel.cart.cartLines}" />
<div class="container">


	<c:if test="${not empty message}">
		
		<div class="alert alert-info">
			<h3 class="text-center">${message}</h3>
		</div>		
	
	</c:if>
	
	<c:choose>
		<c:when test="${not empty cartLines}">
			<table id="cart" class="table table-hover table-condensed">
			   	<thead>
					<tr>
						<th style="width:50%">Product</th>
						<th style="width:10%">Price</th>
						<th style="width:8%">Quantity</th>
						<th style="width:22%" class="text-center">Subtotal</th>
						<th style="width:10%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cartLines}" var="cartLine">
					<c:if test="${cartLine.available == false}">
						<c:set var="availableCount" value="${availableCount - 1}"/>
					</c:if>
					
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-2 hidden-xs">
									<img alt="No image" src="${contextRoot }/resources/images/${cartLine.product.prodCode}.jpg"
												class="img img-responsive cartImg" /></div>
								<div class="col-sm-10">
									<h4 class="nomargin">${cartLine.product.productName} 
										<c:if test="${cartLine.available == false}">
											<strong style="color:red">(Not Available)</strong> 
										</c:if>
									</h4>
									<p>Brand : ${cartLine.product.brand}</p>
									<p>Description : ${cartLine.product.productDescription}
								</div>
							</div>
						</td>
						<td data-th="Price">  ${cartLine.buyingPrice} CFA -/-</td>
						<td data-th="Quantity">
							<input type="number" id="count_${cartLine.cartLineId}" class="form-control text-center" value="${cartLine.productCount}" min="1" max="3">
						</td>
						<td data-th="Subtotal" class="text-center"> ${cartLine.total} CFA -/-</td>
						<td class="actions" data-th="">
							<%-- <c:if test="${cartLine.available == true}"> --%>
								<button type="submit" name="refreshCart" id="refreshCart" class="btn btn-info btn-sm" value="${cartLine.cartLineId}" ><span class="glyphicon glyphicon-refresh"></span></button>
							<%-- </c:if>	 --%>											
							<a href="${contextRoot}/cart/${cartLine.cartLineId}/delete" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>								
						</td>
					</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr class="visible-xs">
						<td class="text-center"><strong>Total ${userModel.cart.grandTotal} CFA -/-</strong></td>
					</tr>
					<tr>
						<td><a href="${contextRoot}/show/all/products" class="btn btn-warning"><span class="glyphicon glyphicon-chevron-left"></span> Continue Shopping</a></td>
						<td colspan="2" class="hidden-xs"></td>
						<td class="hidden-xs text-center"><strong>Total: ${userModel.cart.grandTotal} CFA -/-</strong></td>
						
						<c:choose>
							<c:when test="${availableCount != 0}">
								<td><a href="${contextRoot}/cart/validate" class="btn btn-success btn-block">Checkout <span class="glyphicon glyphicon-chevron-right"></span></a></td>
							</c:when>							
							<c:otherwise>
								<td><a href="javascript:void(0)" class="btn btn-success btn-block disabled"><strike>Checkout <span class="glyphicon glyphicon-chevron-right"></span></strike></a></td>
							</c:otherwise>
						</c:choose>						
					</tr>
				</tfoot>
			</table>
		
		</c:when>
		
		<c:otherwise>
			
			<div class="jumbotron">
				
				<h3 class="text-center">Your Cart is Empty!</h3>
			
			</div>
		
		</c:otherwise>
	</c:choose>


<%@include file="./header/footer.jsp"%>


		<!-- Self coded js file -->
		<script src="<c:url value="/resources/js/mainApp.js" />"></script>
		<%-- <script src="${js }/myApp.js"> --%>


		<!-- Bootstrap core JavaScript -->
		<script src="${js }/jquery.min.js"></script>

		<!-- Jquery validator -->
		<script src="${js}/jquery.validate.js"></script>

		<script src="${js }/bootstrap.bundle.min.js"></script>

</div>

</body>
</html>