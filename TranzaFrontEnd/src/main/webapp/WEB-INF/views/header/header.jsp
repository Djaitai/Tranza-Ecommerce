<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Trial</title>
 <!--  <link href="css/bootstrap.css" rel="stylesheet" type="text/css"> -->
  <!-- <link href="css/font-awesome.css" rel="stylesheet" type="text/css"> -->
  <%-- <link href="<c:url value="/resources/css/dataTables.bootstrap.css" />" --%>
<!-- 	rel="stylesheet"> -->
  <!-- <link href="css/style.css" rel="stylesheet" type="text/css">  -->
  <script src="https://use.fontawesome.com/07b0ce5d10.js"></script>
  
  
  <style>
  .mr-5 {
    margin-right: 5px;
}
.ml-5 {
    margin-left: 5px;
}
.w-100{
    width: 100px;
}
.w-150{
    width: 150px;
}
.w-250{
    width: 250px;
}




.topBar {
    background-color: #ffffff;
    border-bottom: 1px solid rgba(0, 0, 0, 0.08);
    font-size: 13px;
}
.topBar ul {
    margin: 0;
}
.topBar ul li {
    line-height: 42px;
}
.topBar a {
    color: #878c94;text-decoration:none;
}
.text-primary {
    color: #0cd4d2;
}

.topBar ul.topBarNav {
    margin: 0;
    padding: 0;
    list-style-type: none;
}

.topBar ul.topBarNav li {
    position: relative;
    display: inline-block;
    margin-right: -4px;
    border-right: 1px solid rgba(0, 0, 0, 0.08);
}
.topBar ul.topBarNav li:last-child {
    border-right: none;
}
.topBar ul.topBarNav li a {
    display: block;
    padding-left: 12px;
    padding-right: 12px;
}



.topBar ul.topBarNav li ul {
    background-color: #ffffff;
    position: absolute;
    top: 42px;
    left: auto;
    min-width: 10px;
    right: 4px;
    border-radius: 0px;
    border: solid 0px;
    margin-right: -4px;
    padding: 0;
    list-style-type: none;
    z-index: 9999;
    -webkit-transition: all 0.1s ease-in-out;
    -moz-transition: all 0.1s ease-in-out;
    -ms-transition: all 0.1s ease-in-out;
    -o-transition: all 0.1s ease-in-out;
    transition: all 0.1s ease-in-out;
    -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.08);
    -moz-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.08);
    -ms-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.08);
    box-shadow: 0 1px 5px rgba(0, 0, 0, 0.08);
}
.topBar ul.topBarNav li ul li {
    display: block;
    line-height: 30px;
    width: 100%;
    border: none;
}

.topBar ul.topBarNav li a {
    display: block;
    padding-left: 12px;
    padding-right: 12px;
}
.topBar .dropdown-menu > li > a {
    display: block;
    padding: 6px 20px;
    clear: both;
    font-weight: normal;
    line-height: 1.42857143;
    color: #878c94; 
    font-size:15px
    white-space: nowrap;
}
.topBar .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {
    color: #00BCD4;
    text-decoration: none;
   background-color: rgba(0, 0, 0, 0.02);
}


/*CART/////////////////////*/


.cart-items::-webkit-scrollbar {
    width: 6px;
    background-color: #ECECEC;
}
.cart-items::-webkit-scrollbar-track {
   
}
.cart-items::-webkit-scrollbar-thumb {
    background-color: #084951;
    outline: 1px solid black;
}

.topBar ul.topBarNav li ul.cart .cart-items{
    padding: 10px;
    height: 200px;
    overflow: auto;
}

.topBar ul.topBarNav li ul.cart .cart-items .items {
    margin: 0;
    padding: 0;
    list-style-type: none;
}
.topBar ul.topBarNav li ul.cart .cart-items .items li {
    overflow: hidden;
    clear: left;
    padding-bottom: 10px;
    margin-bottom: 10px;
    border-bottom: 1px solid rgba(0, 0, 0, 0.05);
}

.topBar ul.topBarNav li ul.cart .cart-items .items li .product-image {
    width: 60px;
    float: left;
}
.topBar ul.topBarNav li ul.cart .cart-items .items li a {
    margin: 0;
    padding: 0;
    line-height: normal;
    background-color: transparent;
    display: inline;
}
.topBar ul.topBarNav li ul.cart .cart-items .items li .product-details {
    position: relative;
    margin-left: 60px;
    padding: 0 15px 0 10px;
}
.topBar ul.topBarNav li ul.cart .cart-items .items li .product-details .close-icon {
    position: absolute;
    top: 0;
    right: 0;
    font-size: 10px;
    line-height: normal;
}
.topBar ul.topBarNav li ul.cart .cart-footer {
    overflow: hidden;
    background-color: rgba(0, 0, 0, 0.02);
}
.topBar ul.topBarNav li ul.cart .cart-footer a {
    text-align: center;
    padding: 10px 20px;
    margin: 0;
    background-color: transparent;
}


/*/////////////////////////middleBar//////////////////////*/

.middleBar {
    padding: 10px 0 0 0;
    margin: 0;min-height: 70px;
    border-bottom: 1px solid rgba(0, 0, 0, 0.08);
}

@media (min-width: 767px){

.display-table {
    display: table;
    width: 100%;
}
.vertical-align {
    display: table-cell;
    vertical-align: middle;
    float: none;
}
 .grid-space-1 div[class*="col-"] {
    padding: 0 1px;
}
    }

@media (max-width: 767px){

div[class^="col-"] {
    margin-bottom: 30px;
}
}

.middleBar .form-control {
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    -ms-box-shadow: none;
    box-shadow: none;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    -ms-border-radius: 0;
    border-radius: 0;
    border: 1px solid rgba(0, 0, 0, 0.15);
    background-color: #ffffff;
    -webkit-transition: all 0.1s ease-in;
    -moz-transition: all 0.1s ease-in;
    -ms-transition: all 0.1s ease-in;
    -o-transition: all 0.1s ease-in;
    transition: all 0.1s ease-in;
}

.form-control.input-lg {
    font-size: 15px;
}

.middleBar .btn.btn-default {
    color: #ffffff;
    background-color: #0cd4d2;
    border: 1px solid #0cd4d2;
    border-radius: 0px;
}
.middleBar .header-items .header-item {
    display: inline-block;
}

.middleBar .header-items .header-item a {
    position: relative;
    display: block;
    border: 1px solid rgba(0, 0, 0, 0.08);
    width: 40px;
    height: 40px;
    line-height: 40px;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    -ms-border-radius: 100%;
    border-radius: 100%;
    text-align: center;
    color: #35404f;
}
.middleBar .header-items .header-item a sub {
    position: absolute;
    bottom: -8px;
    right: -8px;
    width: 20px;
    height: 20px;
    line-height: 20px;
    text-align: center;
    background-color: #0cd4d2;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    -ms-border-radius: 100%;
    border-radius: 100%;
    color: #ffffff;
    font-size: 9px;
    -webkit-transition: all 0.2s ease-in;
    -moz-transition: all 0.2s ease-in;
    -ms-transition: all 0.2s ease-in;
    -o-transition: all 0.2s ease-in;
    transition: all 0.2s ease-in;
}
.middleBar .header-items .header-item a:hover {
    background-color: #0cd4d2;
    color: #ffffff;
}

/*/////////////////////////navbar-default///////////////*/

.navbar-default {
    -webkit-box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    -moz-box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    background-color: #ffffff;
    margin-bottom: 0;
    border: none;
}

.navbar-default .navbar-nav > .open > a, .navbar-default .navbar-nav > .open > a:hover, .navbar-default .navbar-nav > .open > a:focus {
    color: #0cd4d2;
    background-color: transparent;
}
.navbar-default .navbar-nav > .open > a, .navbar-default .navbar-nav > .open > a:hover, .navbar-default .navbar-nav > .open > a:after {
   border-top:solid 2px #0cd4d2;
   
}
.navbar-default .dropdown-menu {
    padding: 0;
    font-size: 14px;
    background-color: #ffffff;
    color: #878c94;
    border: none;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    -ms-border-radius: 0;
    border-radius: 0;
    -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.08);
    -moz-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.08);
    -ms-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.08);
    box-shadow: 0 1px 5px rgba(0, 0, 0, 0.08);
    -webkit-transition: all 0.1s ease-in;
    -moz-transition: all 0.1s ease-in;
    -ms-transition: all 0.1s ease-in;
    -o-transition: all 0.1s ease-in;
    transition: all 0.1s ease-in;
}

.dropdown-menu > li > a {
    display: block;
    padding: 6px 20px;
    clear: both;
    font-weight: normal;
    line-height: 1.42857143;
    color: #878c94;
    white-space: nowrap;
}
.dropdown-menu > li > a:hover{
     color: #0cd4d2;
}


/***********************
     megaDropMenu
////////////////////////////*/

.navbar-default .container{
    position:relative;
}
.navbar-default .navbar-collapse li.dropdown.megaDropMenu {
    position: static;
}

.navbar-default .navbar-collapse li.dropdown.megaDropMenu .dropdown-menu{
    width: 100%;
}
.navbar-default .navbar-collapse li.dropdown.megaDropMenu .dropdown-menu li ul li:first-child{
    padding: 20px 0px 5px 15px;
    font-size: 16px;
    text-transform: uppercase;
    /* text-align: center; */
    color: #0cd4d2;
}
.navbar-default .navbar-collapse li.dropdown.megaDropMenu .dropdown-menu li ul li a{
    display:block;color:#878c94;font-size: 14px;text-decoration:none;padding:8px 15px;
}
.navbar-default .navbar-collapse li.dropdown.megaDropMenu .dropdown-menu li ul li a:hover{
     color: #00BCD4;
    text-decoration: none;
   background-color: rgba(0, 0, 0, 0.02);
}

.navbar-default .navbar-collapse li.dropdown.megaDropMenu .dropdown-menu img{
    display: block;
    max-width: 100%;
    padding: 20px;
}
  </style>
  
  
  </head>

<body>
  <!--=========-TOP_BAR============-->
  <nav class="topBar">
    <div class="container">
      <ul class="list-inline pull-left hidden-sm hidden-xs">
        <li><span class="text-primary">Have a question? </span> Call +225 48 07 08 39</li>
      </ul>
      <ul class="topBarNav pull-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="false"> <i class="fa fa-usd mr-5"></i>USD<i class="fa fa-angle-down ml-5"></i>
          </a>
          <ul class="dropdown-menu w-100" role="menu">
            <li><a href="#"><i class="fa fa-eur mr-5"></i>EUR</a>
            </li>
            <li class=""><a href="#"><i class="fa fa-usd mr-5"></i>USD</a>
            </li>
            <li><a href="#"><i class="fa fa-gbp mr-5"></i>GBP</a>
            </li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="false"> <img src="http://diamondcreative.net/plus-v1.2/img/flags/flag-french.jpg" class="mr-5" alt=""> <span class="hidden-xs"> French <i class="fa fa-angle-down ml-5"></i></span> </a>
          <ul class="dropdown-menu w-100" role="menu">
            <li>
              <a href="#"><img src="http://diamondcreative.net/plus-v1.2/img/flags/flag-english.jpg" class="mr-5" alt="">Anglais</a>
            </li>
            <li class="">
              <a href="#"><img src="http://diamondcreative.net/plus-v1.2/img/flags/flag-french.jpg" class="mr-5" alt="">Francais</a>
            </li>
            <li>
              <a href="#"><img src="http://diamondcreative.net/plus-v1.2/img/flags/flag-german.jpg" class="mr-5" alt="">Almand</a>
            </li>
            <li>
              <a href="#"><img src="http://diamondcreative.net/plus-v1.2/img/flags/flag-spain.jpg" class="mr-5" alt="">Espagnol</a>
            </li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="false"> <i class="fa fa-user mr-5"></i><span class="hidden-xs">My Account<i class="fa fa-angle-down ml-5"></i></span> </a>
          <ul class="dropdown-menu w-150" role="menu">
            <li><a href="login.html">Login</a>
            </li>
            <li><a href="register.html">Create Account</a>
            </li>
            <li class="divider"></li>
            <li><a href="wishlist.html">Wishlist (5)</a>
            </li>
            <li><a href="cart.html">My Cart</a>
            </li>
            <li><a href="checkout.html">Checkout</a>
            </li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="false"> <i class="fa fa-shopping-basket mr-5"></i> <span class="hidden-xs">
                                Cart<sup class="text-primary">(3)</sup>
                                <i class="fa fa-angle-down ml-5"></i>
                            </span> </a>
          <ul class="dropdown-menu cart w-250" role="menu">
            <li>
              <div class="cart-items">
                <ol class="items">
                  <li>
                    <a href="#" class="product-image"> <img src="https://lh3.googleusercontent.com/-uwagl9sPHag/WM7WQa00ynI/AAAAAAAADtA/hio87ZnTpakcchDXNrKc_wlkHEcpH6vMwCJoC/w140-h148-p-rw/profile-pic.jpg" class="img-responsive" alt="Sample Product "> </a>
                    <div class="product-details">
                      <div class="close-icon"> <a href="#"><i class="fa fa-close"></i></a> </div>
                      <p class="product-name"> <a href="#">djaitaikoffi@gmail.com</a> </p> <strong>1</strong> x <span class="price text-primary">$59.99</span> </div>
                    <!-- end product-details -->
                  </li>
                  <!-- end item -->
                  <li>
                    <a href="#" class="product-image"> <img src="https://lh3.googleusercontent.com/-Gy3KAlilHAw/WNf7a2eL5YI/AAAAAAAAD2Y/V3jUt14HiZA3HLpeOKkSaOu57efGuMw9ACL0B/w245-d-h318-n-rw/shoes_01.jpg" class="img-responsive" alt="Sample Product "> </a>
                    <div class="product-details">
                      <div class="close-icon"> <a href="#"><i class="fa fa-close"></i></a> </div>
                      <p class="product-name"> <a href="#">Lorem Ipsum dolor sit</a> </p> <strong>1</strong> x <span class="price text-primary">$39.99</span> </div>
                    <!-- end product-details -->
                  </li>
                  <!-- end item -->
                  <li>
                    <a href="#" class="product-image"> <img src="https://lh3.googleusercontent.com/-ydDc-0L0WFY/WNf7a6Awe_I/AAAAAAAAD2Y/I8IzJtYRWegkOUxCZ5SCK6vbdiiSxVsCQCL0B/w245-d-h318-n-rw/bags_07.jpg" class="img-responsive" alt="Sample Product "> </a>
                    <div class="product-details">
                      <div class="close-icon"> <a href="#"><i class="fa fa-close"></i></a> </div>
                      <p class="product-name"> <a href="#">Lorem Ipsum dolor sit</a> </p> <strong>1</strong> x <span class="price text-primary">$29.99</span> </div>
                    <!-- end product-details -->
                  </li>
                  <!-- end item -->
                </ol>
              </div>
            </li>
            <li>
              <div class="cart-footer"> <a href="#" class="pull-left"><i class="fa fa-cart-plus mr-5"></i>View
					Cart</a> <a href="#" class="pull-right"><i class="fa fa-shopping-basket mr-5"></i>Checkout</a> </div>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </nav><!--=========-TOP_BAR============-->
    
 <!--=========MIDDEL-TOP_BAR============-->
    
    <div class="middleBar">
    <div class="container">
  <div class="row display-table">
    <div class="col-sm-3 vertical-align text-left hidden-xs">
      <a href="${contextRoot }/home"> <img width="100px" src="${contextRoot }/resources/images/eCommerce-logo41.png"
      		 alt="noimga.png"></a>
    </div>
    <!-- end col -->
    <div class="col-sm-7 vertical-align text-center">
      <form>
        <div class="row grid-space-1">
          <div class="col-sm-6">
            <input type="text" name="keyword" class="form-control input-lg" placeholder="Search">
         </div>
          <!-- end col -->
          <div class="col-sm-3">
            <select class="form-control input-lg" name="category">
              <option value="all">Nos Categories</option>
              <optgroup label="Mens">
                <option value="shirts">Shirts</option>
                <option value="coats-jackets">Coats & Jackets</option>
                <option value="underwear">Underwear</option>
                <option value="sunglasses">Sunglasses</option>
                <option value="socks">Socks</option>
                <option value="belts">Belts</option>
              </optgroup>
              <optgroup label="Womens">
                <option value="bresses">Bresses</option>
                <option value="t-shirts">T-shirts</option>
                <option value="skirts">Skirts</option>
                <option value="jeans">Jeans</option>
                <option value="pullover">Pullover</option>
              </optgroup>
              <option value="kids">Kids</option>
              <option value="fashion">Fashion</option>
              <optgroup label="Sportwear">
                <option value="shoes">Shoes</option>
                <option value="bags">Bags</option>
                <option value="pants">Pants</option>
                <option value="swimwear">Swimwear</option>
                <option value="bicycles">Bicycles</option>
              </optgroup>
              <option value="bags">Bags</option>
              <option value="shoes">Shoes</option>
              <option value="hoseholds">HoseHolds</option>
              <optgroup label="Technology">
                <option value="tv">TV</option>
                <option value="camera">Camera</option>
                <option value="speakers">Speakers</option>
                <option value="mobile">Mobile</option>
                <option value="pc">PC</option>
              </optgroup>
            </select>
          </div>
          <!-- end col -->
          <div class="col-sm-3">
            <input type="submit" class="btn btn-default btn-block btn-lg" value="Search">
         </div>
          <!-- end col -->
        </div>
        <!-- end row -->
      </form>
    </div>
    <!-- end col -->
    <div class="col-sm-2 vertical-align header-items hidden-xs">
      <div class="header-item mr-5">
        <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wishlist"> <i class="fa fa-heart-o"></i> <sub>32</sub> </a>
      </div>
      <div class="header-item">
        <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="" data-original-title="Compare"> <i class="fa fa-refresh"></i> <sub>2</sub> </a>
      </div>
    </div>
    <!-- end col -->
  </div>
  <!-- end  row -->
</div>
</div>
    
    
<nav class="navbar navbar-main navbar-default" role="navigation" style="opacity: 1;">
          <div class="container">
            <!-- Brand and toggle -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>             
            </div>
        
            <!-- Collect the nav links,  -->
            <div class="collapse navbar-collapse navbar-1" style="margin-top: 0px;">            
              <ul class="nav navbar-nav">
                <li><a href="${contextRoot }/home" class="dropdown-toggle" data-hover="dropdown" data-close-others="false">Acceuil</a></li>
                  
                  
                <!-- Coputer Products -->  
                <li class="dropdown megaDropMenu">
                  <a href="${contextRoot }/show/category/${categoriesList.categoryId }/products" class="dropdown-toggle"  data-hover="dropdown" data-close-others="false">${categoriesList.catName } <i class="fa fa-angle-down ml-5"></i></a>
                  <ul class="dropdown-menu row">
                    <li class="col-sm-3 col-xs-12">
                      <ul class="list-unstyled">
                        <li>Laptop</li>
                        <li><a href="#">Apple</a></li>
                        <li><a href="#">Dell</a></li>
                        <li><a href="#">HP</a></li>
                     </ul>
                    </li>
                    <li class="col-sm-3 col-xs-12">
                      <ul class="list-unstyled">
                        <li>Orinateur</li>
                        <li><a href="#"> Asus</a></li>
                        <li><a href="#">Lenova</a></li>
                        <li><a href="#">Toshiba</a></li>
                       </ul>
                    </li>
                  <li class="col-sm-3 col-xs-12">
                        <ul class="list-unstyled">
                        <li>Nouveau produit</li>
                     </ul>
                      <img src="${contextRoot }/resources/images/PRD43C3CEC64A.jpg" class="img-responsive" alt="menu-img">
                    </li>
                    
                    
                    <li class="col-sm-3 col-xs-12">
                        <ul class="list-unstyled">
                        <li>Nouvelle arrivage</li>
                     </ul>
                      <img src="${contextRoot }/resources/images/PRD4E01C22569.jpg" class="img-responsive" alt="menu-img">
                    </li>
                  </ul>
                </li>
                
                
                
                
                
                
                
                  
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="false">Page <i class="fa fa-angle-down ml-5"></i></a>
                  <ul class="dropdown-menu dropdown-menu-left">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Register</a></li>
                    <li><a href="#">Register or Login</a></li>
                    <li><a href="#">Login</a></li>
                    <li><a href="#">Password Recovery</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms & Conditions</a></li>
                    <li><a href="#">404 Not Found</a></li>
                    <li><a href="#">Short Code</a></li>
                    <li><a href="#">Coming Soon</a></li>
                  </ul>
                </li>
                <li><a href="#" class="dropdown-toggle"  data-hover="dropdown" data-close-others="false">Blog</a></li>
                <li><a href="#" class="dropdown-toggle"  data-hover="dropdown" data-close-others="false">My List</a></li>
               
               <security:authorize access="hasAuthority('ADMIN')">
                <li id="manageProducts"><a href="${contextRoot }/manage/products" class="dropdown-toggle" data-hover="dropdown" data-close-others="false">Ajouter Produit</a></li>
               </security:authorize>
               
                <li><a href="${contextRoot }/contact" class="dropdown-toggle"  data-hover="dropdown" data-close-others="false">Contact</a></li>
                <li><a href="${contextRoot }/about" class="dropdown-toggle"  data-hover="dropdown" data-close-others="false">A propos de Nous</a></li>
               
               <security:authorize access="isAnonymous()">
                <li id="register"><a href="${contextRoot }/register" class="dropdown-toggle" data-hover="dropdown" data-close-others="false">Enregistrer vous</a></li>             
					
					
					
					
					<li id="login" class="nav-item">
						<a class="dropdown-toggle"  data-hover="dropdown" href="${contextRoot }/login"  data-close-others="false">Se Connecter</a>
					</li>
                </security:authorize>
                
                
                
                <li><a href="#" class="dropdown-toggle"  data-hover="dropdown" data-close-others="false">My List</a></li>
                
                
                <security:authorize access="isAuthenticated()">
	                <li id="login" class="dropdown">
	                <a class="btn btn-warning dropdown-toggle 
								"href="javascript:void(0)" id="dropdownMenu1"
									data-toggle="dropdown"> ${userModel.fullName }
									<span class="caret"></span>
									</a>
						<ul class="dropdown-menu">
						<security:authorize access="hasAuthority('USER')">
						<li>
											<a href="${contextRoot }/cart/show">
												<span class="glyphicon glyphicon-shopping-cart"></span>
												<span class="badge">${userModel.cart.cartLines }</span>
												 ${userModel.cart.grandTotal } CFA-/-
											</a>
										</li>
										<li class="divider" role="separator"></li>
									</security:authorize>
									<li>
									<a class="btn btn-warning dropdown-toggle" data-hover="dropdown" data-close-others="false"  href="${contextRoot }/perform-logout">Se deconnecter</a>
								</li>
								</ul>
					</li>
					</security:authorize>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div>
        </nav>
    
    
    
    
    
    
    
    
    
    
  	<%-- <script src="<c:url value="/resources/js/jquery-3.1.1.js" />"></script>   --%>
  		<script src="<c:url value="/resources/js/bootstrap.js" />"></script>  
    
<!--   <script src="js/jquery-3.1.1.js"></script>
  <script src="js/bootstrap.js"></script> -->
  
  <script>
    ! function($, n, e) {
      var o = $();
      $.fn.dropdownHover = function(e) {
        return "ontouchstart" in document ? this : (o = o.add(this.parent()), this.each(function() {
          function t(e) {
            o.find(":focus").blur(), h.instantlyCloseOthers === !0 && o.removeClass("open"), n.clearTimeout(c), i.addClass("open"), r.trigger(a)
          }
          var r = $(this),
            i = r.parent(),
            d = {
              delay: 100,
              instantlyCloseOthers: !0
            },
            s = {
              delay: $(this).data("delay"),
              instantlyCloseOthers: $(this).data("close-others")
            },
            a = "show.bs.dropdown",
            u = "hide.bs.dropdown",
            h = $.extend(!0, {}, d, e, s),
            c;
          i.hover(function(n) {
            return i.hasClass("open") || r.is(n.target) ? void t(n) : !0
          }, function() {
            c = n.setTimeout(function() {
              i.removeClass("open"), r.trigger(u)
            }, h.delay)
          }), r.hover(function(n) {
            return i.hasClass("open") || i.is(n.target) ? void t(n) : !0
          }), i.find(".dropdown-submenu").each(function() {
            var e = $(this),
              o;
            e.hover(function() {
              n.clearTimeout(o), e.children(".dropdown-menu").show(), e.siblings().children(".dropdown-menu").hide()
            }, function() {
              var t = e.children(".dropdown-menu");
              o = n.setTimeout(function() {
                t.hide()
              }, h.delay)
            })
          })
        }))
      }, $(document).ready(function() {
        $('[data-hover="dropdown"]').dropdownHover()
      })
    }(jQuery, this);
  </script>
</body>

</html>