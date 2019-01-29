<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tranza</title>

<!-- <link href="https://fonts.googleapis.com/css?family=Roboto|Oswald:300,400" rel="stylesheet"> -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 

<style type="text/css">
.carousel{
	margin: 30px 0;
    background: #ccc;
  	position: relative;
    box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
}
.carousel:after {
	content: "";
    position: absolute;
    z-index: -1;
    box-shadow: 0 0 20px rgba(0,0,0,0.8);
    height: 60px;
    bottom: 0px;
    left: 10px;
    right: 10px;
    border-radius: 100px / 20px;
}
.carousel .item {
    text-align: center;
	overflow: hidden;
    height: 475px;
}
.carousel .item img {
	max-width: 100%;
    margin: 0 auto; /* Align slide image horizontally center in Bootstrap v3 */
}
.carousel .carousel-control {
	width: 50px;
    height: 50px;
    background: #000;
    margin: auto 0;
	opacity: 0.8;
}
.carousel .carousel-control:hover {
	opacity: 0.9;
}
.carousel .carousel-control i {
    font-size: 41px;
}
.carousel-caption h3, .carousel-caption p {
	color: #fff;
	display: inline-block;
	font-family: 'Oswald', sans-serif;
	text-shadow: none;
	margin-bottom: 20px;
}
.carousel-caption h3 {
	background: rgba(0,0,0,0.9);
	padding: 12px 24px;
	font-size: 40px;	
	text-transform: uppercase;
}
.carousel-caption p {
	background: #8fc93c;
	padding: 10px 20px;
	font-size: 20px;
	font-weight: 300;
}
.carousel-action {
	padding: 10px 0 30px;
}
.carousel-action .btn {
	min-height: 34px;
	border-radius: 0;
	margin: 3px;
	min-width: 150px;
	text-transform: uppercase;
	font-family: 'Oswald', sans-serif;
}
.carousel-action .btn-primary {
	border-color: #000;
	background: none;
	color: #000;
}
.carousel-action .btn-primary:hover {
	background: #000;
	color: #fff;
}
.carousel-action .btn-success {
	background: #8fc93c;
	border: none;
}
.carousel-action .btn-success:hover {
	background: #87bd35;
}
.carousel-indicators li, .carousel-indicators li.active {
	width: 11px;
	height: 11px;
	border-radius: 50%;
	margin: 1px 6px;
}
.carousel-indicators li {
	background: transparent;
	border: 1px solid #fff;
}
.carousel-indicators li.active {
	background: #8fc93c;
	border-color: #8fc93c;
}
</style>
</head>
<body>


<%@ include file="./header/header.jsp" %>



 <div class="container">
	<div class="row">
		<div class="col-md-12">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				Carousel indicators
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
					<li data-target="#myCarousel" data-slide-to="5"></li>
					<li data-target="#myCarousel" data-slide-to="6"></li>
				</ol>   
				Wrapper for carousel items
				<div class="carousel-inner">
					<div class="item carousel-item active">
						<img class="d-block img-fluid"
										style="width: 1150px; height: 1000px"
										src="resources/images/slideing1.jpg" alt="noImage.jpg">
						<div class="carousel-caption">
							<h3>Award Winning Support</h3>
							<p>Pulvinar leo id risus pellentesque vestibulum. Sed diam libero, sodales eget cursus dolor.</p>
							<div class="carousel-action">
								<a href="#" class="btn btn-primary">Learn More</a>
								<a href="#" class="btn btn-success">Try Now</a>
							</div>
						</div>
					</div>	
					<div class="item carousel-item">
						<img class="d-block img-fluid"
										style="width: 1150px; height: 1000px"
										src="resources/images/hero.jpg" alt="First slide">
						<div class="carousel-caption">
							<h3>Amazing Digital Experience</h3>							
							<p>Nullam hendrerit justo non leo aliquet imperdiet. Etiam sagittis lectus condime dapibus.</p>
							<div class="carousel-action">
								<a href="#" class="btn btn-primary">Learn More</a>
								<a href="#" class="btn btn-success">Try Now</a>
							</div>
						</div>
					</div>
					
					
					<div class="item carousel-item">
						<img class="d-block img-fluid"
										style="width: 1150px; height: 1000px"
										src="resources/images/slider2.jpg" alt="Third slide">
						<div class="carousel-caption">
							<h3>Live Monitoring Tools</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu pellentesque sem tempor.</p>
							<div class="carousel-action">
								<a href="#" class="btn btn-primary">Learn More</a>
								<a href="#" class="btn btn-success">Try Now</a>
							</div>
						</div>
					</div>	
					
					<div class="item carousel-item">
						<img class="d-block img-fluid"
										style="width: 1150px; height: 1000px"
										src="resources/images/slide7.jpg" alt="Third slide">
						<div class="carousel-caption">
							<h3>Live Monitoring Tools</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu pellentesque sem tempor.</p>
							<div class="carousel-action">
								<a href="#" class="btn btn-primary">Learn More</a>
								<a href="#" class="btn btn-success">Try Now</a>
							</div>
						</div>
					</div>	
					
					
					
					<div class="item carousel-item">
						<img class="d-block img-fluid"
										style="width: 1150px; height: 1000px"
										src="resources/images/slide6.jpg" alt="Third slide">
						<div class="carousel-caption">
							<h3>Live Monitoring Tools</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu pellentesque sem tempor.</p>
							<div class="carousel-action">
								<a href="#" class="btn btn-primary">Learn More</a>
								<a href="#" class="btn btn-success">Try Now</a>
							</div>
						</div>
					</div>	
					
					
					<div class="item carousel-item">
						<img class="d-block img-fluid"
										style="width: 1150px; height: 1000px"
										src="resources/images/slide4.jpg" alt="Third slide">
						<div class="carousel-caption">
							<h3>Live Monitoring Tools</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu pellentesque sem tempor.</p>
							<div class="carousel-action">
								<a href="#" class="btn btn-primary">Learn More</a>
								<a href="#" class="btn btn-success">Try Now</a>
							</div>
						</div>
					</div>	
					
					
					
					<div class="item carousel-item">
						
					<img class="d-block img-fluid"
										style="width: 1150px; height: 1000px"
										src="resources/images/slide3.jpg" alt="Third slide">
						<div class="carousel-caption">
							<h3>Live Monitoring Tools</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu pellentesque sem tempor.</p>
							<div class="carousel-action">
								<a href="#" class="btn btn-primary">Learn More</a>
								<a href="#" class="btn btn-success">Try Now</a>
							</div>
						</div>
					</div>	
					
					
					<div class="item carousel-item">
						<img class="d-block img-fluid"
										style="width: 900px; height: 1000px"
										src="resources/images/slide7.jpg" alt="Third slide">
						<div class="carousel-caption">
							<h3>Live Monitoring Tools</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu pellentesque sem tempor.</p>
							<div class="carousel-action">
								<a href="#" class="btn btn-primary">Learn More</a>
								<a href="#" class="btn btn-success">Try Now</a>
							</div>
						</div>
					</div>	
					
					
				</div>
				Carousel controls
				<a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
					<i class="fa fa-angle-left"></i>
				</a>
				<a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
					<i class="fa fa-angle-right"></i>
				</a>
			</div>
		</div>
	</div> 
	
	
	<div class="row">
	
								<hr style="height: 50px; background-color: #0A79DF; ">
							<div>Nos Categories</div> <br><br>
							
							<div class="row">
							
							<c:forEach items="${categories }" var="categoriesList">

								<div class="col-lg-4 col-md-6 mb-4">
									<div class="card h-100">
										<a href="${contextRoot }/show/category/${categoriesList.categoryId }/products"
											id="a_${categoriesList.categoryCode }"><img class="d-block img-fluid"
											style="width: 400px; height: 145px"
											src="${contextRoot }/resources/images/${categoriesList.categoryCode }.jpg"
											alt="First slide"></a>
										<div class="card-body">
											<h4 class="card-name">
												<a style="color: white;" href="${contextRoot }/show/category/${categoriesList.categoryId }/products">${categoriesList.catName }</a>
											</h4>
											
										</div>
										
									</div>
								</div>

							</c:forEach>
							
							</div> <!-- row -->
	
	
	
	</div>
	
	
	
	
</div>
</body>
</html>












                            