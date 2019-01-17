<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="list-group">
		<c:forEach items="${categories }" var="category">
			<a href="${contextRoot }/show/category/${category.categoryId }/products" class="list-group-item" id="a_${category.catName }">${category.catName }</a>
		</c:forEach>

	</div>

</body>
</html>