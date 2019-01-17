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
		if(menu == "Home") break; 
		$('#listProducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;
				
	default:
		$('#home').addClass('active');
	}	

	// Caode for jquery dataTable
	//Create a data set
	var products = [

	[ '1', 'ABC' ], [ '2', 'MBD' ], [ '3', 'SBF' ], [ '4', 'UBG' ],
			[ '5', 'WBC' ]

	];

	var $table = $('#productListTable');

	//Execute the bellow code  only where we have this table
	if ($table.length) {
		

		$table.DataTable({
			data: products
		});
		

	}

});