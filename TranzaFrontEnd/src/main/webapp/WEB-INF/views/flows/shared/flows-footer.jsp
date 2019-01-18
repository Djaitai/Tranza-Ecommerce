<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%@include file="../../header/footer.jsp"%>


</body>

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

</html>