/**
 * 
 */

// jQuery(document).ready(function($){
$(function() {

	// solving the active menu problem
	switch (menu) {
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;

	case 'All Products':
		if (menu == "Home")
			break;
		$('#listProducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;

	case 'Manage Product':
		$('#manageProducts').addClass('active');
		break;
	default:
		$('#home').addClass('active');
	}
	
	
	//to tackle the csrf token
	// for handling CSRF token
	var token = $('meta[name="_csrf"]').attr('content');
	var header = $('meta[name="_csrf_header"]').attr('content');
	
	if((token!=undefined && header !=undefined) && (token.length > 0 && header.length > 0)) {		
		// set the token header for the ajax request
		$(document).ajaxSend(function(e, xhr, options) {			
			xhr.setRequestHeader(header,token);			
		});				
}

	// Code for jquery dataTable
	// Create a data set

	var $table = $('#productListTable');

	// Execute the bellow code only where we have this table
	if ($table.length) {

		var jsonUrl = '';
		if (window.categoryId == '') {
			jsonUrl = window.contextRoot + '/json/data/all/products';
		} else {
			jsonUrl = window.contextRoot + '/json/data/category/'
					+ window.categoryId + '/products';
		}

		$table
				.DataTable({

					lengthMenu : [ [ 3, 5, 10, -1 ],
							[ '3Records', '5 Records', '10 Records' ], 'All' ],
					pageLength : 5,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},

					columns : [

							{
								data : 'prodCode',
								mRender : function(data, type, row) {

									return '<img src="' + window.contextRoot
											+ '/resources/images/' + data
											+ '.jpg" class="dataTableImg"/>';
								}

							},

							{
								data : 'productName'
							},

							{
								data : 'brand'
							},

							{
								data : 'unitPrice',
								mRender : function(data, type, row) {
									return '&#8377 ' + data
								}

							},

							{
								data : 'quantity',
								mRender : function(data, type, row) {

									if (data < 1.0) {
										return '<span style="color:red">Out of Stock!</span>';
									}

									return data;
								}
							},

							{
								data : 'views'
							},

							{
								data : 'productId',
								mRender : function(data, type, row) {

									var str = '';

									if (row.quantity < 1.0) {
										str += '<a href="javascript:void(0)" class="btn btn-warning disabled"><span class="glyphicon glyphicon-shopping-cart"></span></a>&#160;&nbsp;&nbsp;';
									} else {

										str += '<a href="'
												+ window.contextRoot
												+ '/cart/add/'
												+ data
												+ '/product" class="btn btn-warning"><span class="glyphicon glyphicon-shopping-cart"></span></a>&#160;&nbsp;&nbsp;';
									}

									str += '<a href="'
											+ window.contextRoot
											+ '/show/'
											+ data
											+ '/product" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span></a>&#160;&nbsp;&nbsp;';
									return str;
								}
							} ]

				});
	}

	// Dismissing alert after 3 seconds
	var $alert = $('.alert');
	if ($alert.length) {
		setTimeout(function() {
			$alert.fadeOut('slow');

		}, 3000)
	}

	/*------*/
	/* for fading out the alert message after 3 seconds */
	/*
	 * $alert = $('.alert'); if($alert.length) { setTimeout(function() {
	 * $alert.fadeOut('slow'); }, 3000 ); }
	 */

	// -----------------------------------------
	// $('.switch input[type="checkbox"]').on('change' , function(){
	$('.switch input[type="checkbox"]').on('change', function() {
						var checkbox = $(this);
						var checked = checkbox.prop('checked');
						var dMsg = (checked)? 'You want to activate the product?':
							'You wan to deactivate the product?';
						var value = checkbox.prop('value');
						bootbox.confirm({
									size: 'medium',
									title: 'Product activation & Deactivation',
									message: dMsg,
									callback: function(confirmed) {
										if (confirmed) {
											console.log(value);
											bootbox.alert({
														size: 'medium',
														title: 'Information',
														message: 'You are going to perform operation on product '
																+ value
													});
										} else {
											checkbox.prop('checked', !checked);
										}
									}
								});
					});

	// DataTable for Admin

	// Caode for jquery dataTable
	// Create a data set

	var $adminProductsTable = $('#adminProductTable');

	if ($adminProductsTable.length) {

		var jsonUrl = window.contextRoot + '/json/data/admin/all/products';
		// console.log(jsonUrl);

		$adminProductsTable
				.DataTable({
					lengthMenu : [ [ 10, 30, 50, -1 ],
							[ '10 Records', '30 Records', '50 Records', 'ALL' ] ],
					pageLength : 30,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
							{
								data : 'productId'
							},

							{
								data : 'prodCode',
								bSortable : false,
								mRender : function(data, type, row) {
									return '<img src="' + window.contextRoot
											+ '/resources/images/' + data
											+ '.jpg" class="dataTableImg"/>';
								}
							},
							{
								data : 'productName'
							},
							{
								data : 'brand'
							},
							{
								data : 'quantity',
								mRender : function(data, type, row) {

									if (data < 1) {
										return '<span style="color:red">Out of Stock!</span>';
									}

									return data;

								}
							},
							{
								data : 'unitPrice',
								mRender : function(data, type, row) {
									return '&#8377; ' + data
								}
							},
							{
								data : 'iSactive',
								bSortable : false,
								mRender : function(data, type, row) {
									var str = '';
									if (data) {
										str += '<label class="switch"> <input type="checkbox" value="'
												+ row.productId
												+ '" checked="checked">  <div class="slider round"> </div></label>';

									} else {
										str += '<label class="switch"> <input type="checkbox" value="'
												+ row.productId
												+ '">  <div class="slider round"> </div></label>';
									}

									return str;
								}
							},
							{
								data : 'productId',
								bSortable : false,
								mRender : function(data, type, row) {

									var str = '';
									str += '<a href="'+ window.contextRoot + '/manage/'+ data+ '/product" class="btn btn-warning">';
									str +='<span class="glyphicon glyphicon-pencil"></span></a> &#160;';
									return str;
								}
							}

					],
					
					initComplete: function () {
						var api = this.api();
						api.$('.switch input[type="checkbox"]').on('change' , function() {							
							var dText = (this.checked)? 'You want to activate the Product?': 'You want to de-activate the Product?';
							var checked = this.checked;
							var checkbox = $(this);
							debugger;
						    bootbox.confirm({
						    	size: 'medium',
						    	title: 'Product Activation/Deactivation',
						    	message: dText,
						    	callback: function (confirmed) {
							        if (confirmed) {
							        	console.log(value);
							        	var activationUrl = window.contextRoot +'/manage/product/' + value+ '/activation';
							        	$.post(activationUrl , function(data){
							        		bootbox.alert({
							        			
							        			size: 'medium',
												title: 'Information',
												message: data
							        		});
							        	});
							        	
							        }
							        else {							        	
							        	checkbox.prop('checked', !checked);
							        }
						    	}
						    });																											
						});
							
					}

				});
	}

	//**********************************
	
	//******** Validate code for category ***********************************
	
	var $categoryForm = $('#categoryForm');
	
	if($categoryForm.length){
		$categoryForm.validate({
			rules : {
				catName : {
					required: true,
					minlength: 2					
				},
				
				catDescription: {
					required: true
					
				}
			},
			
			messages: {
				catName : {
					required: 'Please add the Category name!',
					minlength: 'The Category name should not be lss than 2 characters'
				},
				
				catDescription: {
					required: 'Please add description for this Category!'
				}
			}
			,
			
			errorElement: 'em',
			errorPlacement: function(error, element){
				//Add the class of help-block
				error.addClass('help-block');
				//Add the error after the input element
				error.insertAfter(element);
			}			
		});
	}

	//****************************************************
	
	
	
	
	//**********************************
	
	//******** Validate code for login form ***********************************
	
	var $loginForm = $('#loginForm');
	
	if($loginForm.length){
		$loginForm.validate({
			rules : {
				username : {
					required: true,
					email: true					
				},
				
				password: {
					required: true
					
				}
			},
			
			messages: {
				username : {
					required: 'Please enter the user name!',
					email: 'please enter valid email address'
				},
				
				password: {
					required: 'Please enter the password!'
				}
			}
			,
			
			errorElement: 'em',
			errorPlacement: function(error, element){
				//Add the class of help-block
				error.addClass('help-block');
				//Add the error after the input element
				error.insertAfter(element);
			}			
		});
	}
});