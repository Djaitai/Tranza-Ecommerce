<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 

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
	
	.help-block{
		color: #E71C23;
	}
</style>
	
	
</head>
<body>
	<%@ include file="../shared/flows-header.jsp"%>
	<div class="container">
		<div class="container">


			<div class="row">

				<div class="col-md-6 col-md-offset-3">

					<div class="panel panel-primary">

						<div class="panel-heading">
							<h4>Sign Up - Personal</h4>
						</div>

						<div class="panel-body">

							<sf:form method="POST" modelAttribute="user" class="form-horizontal" id="registerForm">


								<div class="form-group">
									<label class="control-label col-md-4">First Name</label>
									<div class="col-md-8">
										 <sf:input type="text" path="firstName" class="form-control"
											placeholder="First Name" />
										<sf:errors path="firstName" cssClass="help-block" element="em" />
									</div>
								</div>


								<div class="form-group">
									<label class="control-label col-md-4">Last Name</label>
									<div class="col-md-8">
										<sf:input type="text" path="lastName" class="form-control"
											placeholder="Last Name" />
										<sf:errors path="lastName" cssClass="help-block" element="em" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4">Email</label>
									<div class="col-md-8">
										<sf:input type="text" path="emailId" class="form-control"
											placeholder="abc@zyx.com" />
										<sf:errors path="emailId" cssClass="help-block" element="em" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4">Contact Number</label>
									<div class="col-md-8">
										<sf:input type="text" path="contactNumber"
											class="form-control" placeholder="+225 XX XX XX XX" maxlength="13" />
										<sf:errors path="contactNumber" cssClass="help-block"
											element="em" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4">Password</label>
									<div class="col-md-8">
										<sf:input type="password" path="password" class="form-control"
											placeholder="Password" />
										<sf:errors path="password" cssClass="help-block" element="em" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4">Confirm Password</label>
									<div class="col-md-8">
										<sf:input type="password" path="confirmPassword"
											class="form-control" placeholder="Re-type password" />
										<sf:errors path="confirmPassword" cssClass="help-block"
											element="em" />
									</div>
								</div>
								
								
								<!-- radio button using bootstrap of radio-inline  -->
								<div class="form-group">
									<label class="control-label col-md-4">Select Role</label>
									<div class="col-md-8">
										<label class="radio-inline">
										 <sf:radiobutton path="role" value="USER" checked="checked" /> User
										</label> <label class="radio-inline"> 
										<sf:radiobutton
												path="role" value="SUPPLIER" /> Supplier
										</label>
									</div>
								</div>

								<div class="form-group">
									<div class="col-md-offset-4 col-md-8">
										<button type="submit" name="_eventId_billing"
											class="btn btn-primary">
											Next - Billing <span
												class="glyphicon glyphicon-chevron-right"></span>
										</button>
									</div>
								</div>


							</sf:form>


						</div>


					</div>


				</div>


			</div>


		</div>

	</div>


	<%@ include file="../shared/flows-footer.jsp"%>
</body>

</html>