<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="resources/css" />
<spring:url var="js" value="resources/js" />
<spring:url var="images" value="resources/images" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tranza ${title }</title>

<!-- Bootstrap core JavaScript -->
<script src="${js }/jquery.min.js"></script>
<script src="${js }/bootstrap.bundle.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="${css }/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css }/shop-homepage.css" rel="stylesheet">

</head>
<body>

	<%@ include file="./header/menu.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">Le Lorem Ipsum est simplement du faux
				texte employé dans la composition et la mise en page avant
				impression. Le Lorem Ipsum est le faux texte standard de
				l'imprimerie depuis les années 1500, quand un imprimeur anonyme
				assembla ensemble des morceaux de texte pour réaliser un livre
				spécimen de polices de texte. Il n'a pas fait que survivre cinq
				siècles, mais s'est aussi adapté à la bureautique informatique, sans
				que son contenu n'en soit modifié. Il a été popularisé dans les
				années 1960 grâce à la vente de feuilles Letraset contenant des
				passages du Lorem Ipsum, et, plus récemment, par son inclusion dans
				des applications de mise en page de texte, comme Aldus PageMaker.

				Pourquoi l'utiliser? On sait depuis longtemps que travailler avec du
				texte lisible et contenant du sens est source de distractions, et
				empêche de se concentrer sur la mise en page elle-même. L'avantage
				du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du
				texte.' est qu'il possède une distribution de lettres plus ou moins
				normale, et en tout cas comparable avec celle du français standard.
				De nombreuses suites logicielles de mise en page ou éditeurs de
				sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une
				recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites
				qui n'en sont encore qu'à leur phase de construction. Plusieurs
				versions sont apparues avec le temps, parfois par accident, souvent
				intentionnellement (histoire d'y rajouter de petits clins d'oeil,
				voire des phrases embarassantes).</div>
		</div>
	</div>
	<%@ include file="./header/footer.jsp"%>
</body>
</html>