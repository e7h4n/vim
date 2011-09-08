//
// Sample Javascript test code
//
//


// = Case: Arithmetic (1)
var x = 1 + 1; 	// 0

// = Case: Arithmetic (2)
var x = 1 + 	// 0
1; 		// 1

// = Case: Arithmetic (3)
var x = 1 + 	// 0
1 +  		// 1
1; 		// 1

// = Case: Object (2) 
var x = { y : y, z : z } 	// 0
w; 					// 0

// = Case: Object (1)
var x = { 		// 0
	// comment 	// 1
	y : y, 	// 1
	z : z		// 1
} 			// 0

// = Case: Object (2)
var x = { 		// 0
	// comment 	// 1
	y : {		// 1
		z: z, // 2
		w: w  // 2
	}, 		// 1
	t: t 		// 1
} 			// 0


// Case: Function (1)
function $blah() { 	// 0
	x; 			// 1
	y; 			// 1
} 				// 0

// Case: Function (2)
var $blah = function() { 	// 0
	x; 				// 1
	y; 				// 1
} 					// 0

// Case: Function(3)
var x = { 				// 0 
	$blah: function() { 	// 1
		y; 			// 2
	} 				// 1
} 					// 0

// Case: Function(4)
function $blah( 	// 0 
x, 		// 1
y, 		// 1
z ) { 	// 1
} 			// 0

// Case: Function (5)
function $blah( 	// 0 
x, 		// 1
y, 		// 1
z ) { 	// 1
	x; 		// 1
} 			// 0



// = Case: if (1)
if ( x ) { 	// 0
	x; 	// 1
} 		// 0 

// = Case: if (2)
if(x) 	// 0  
	x; 	// 1
y; 		// 0

// = Case: if (3)
if(x) 	// 0
{ 		// 0
	x; 	// 1
} 		// 0

// = Case: if (4)
if( x == y && 	// 0
y == z || 	// 1
z == w) { 	// 1
	x; 		// 1
} 			// 0

// = Case: if (4a)
if( x == y && 	// 0
y == z || 	// 1
z == w)  	// 1
{ 			// 0
	x; 		// 1
} 			// 0


// = Case: if (5)
if(x) 		// 0
	// comment 	// 1
	y; 		// 1
x; 			// 0



// = Case: if else (1)
if ( x ) { 	// 0
	x; 	// 1 
} else { 	// 0
	y; 	// 1
} 		// 0  

// = Case: if else (2)
if ( x ) 	// 0 
	x; 	// 1
else 		// 0
	y; 	// 1

// = Case: if else(3)
if(x) 	// 0
{ 		// 0
	x; 	// 1 
} 		// 0
else 		// 0
{ 		// 0
	y; 	// 1
} 		// 0

// = Case: if elseif else (1)
if ( x ) { 	// 0
	x; 	// 1
} else if ( y ) { 	// 0
	y; 	// 1
} else { 	// 0
	z; 	// 1
} 		// 0

// = Case: if elseif else (2)
if ( x ) 	// 0
	x; 	// 1
else if ( y ) 	// 0
	y; 	// 1
else   	// 0
	z; 	// 1

// = Case: if elseif else (3)
if(x) 	// 0
{ 		// 0
	x; 	// 1
} 		// 0
else if(y) 	// 0
{ 		// 0
	y; 	// 1
} 		// 0 
else  	// 0
{ 		// 0
	z; 	// 1
} 		// 0

// = Case: for (1)
for (var i = 0; i < blah.length; i++) { 	// 0
	blah[i]; 					// 1
}; 							// 0

// = Case: for (2)
for (var i = 0; i < blah.length; i++) 	// 0
	blah[i]; 					// 1
x; 							// 0

// = Case: switch 
switch(x) { 	// 0
case "y": 		// 0
	y; 		// 1
	break; 	// 1

case "z": 		// 0
	z; 		// 1
	break; 	// 1

default: 		// 0
	w; 		// 1 
	break; 	// 1
} 		

// = Case: try (1)
try { 		// 0
	x; 		// 1
} 			// 0

// = Case: try (2)
try 			// 0
	x; 		// 1 
y; 			// 0 

// = Case: try (3)
try  			// 0
{ 			// 0
	x; 		// 1
} 			// 0

// = Case: try catch (1)
try { 		// 0 
	x; 		// 1 
} catch(e) {  	// 0
	y; 		// 1
} 			// 0

// Case: try catch (2)
try  			// 0
{ 			// 0
	x; 		// 1
} 			// 0
catch(e) 		// 0
{ 			// 0
	y; 		// 1 
} 			// 0

// Case: try catch (3)
try  			// 0
	x; 		// 1
catch(e) 		// 0 
	y; 		// 1


// Case: try catch finally (1)
try { 		// 0
	x; 		// 1
	y; 		// 1
} catch(e) { 	// 0 
	x; 		// 1 
	y;  		// 1
} finally { 	// 0
	x; 		// 1
	y;  		// 1
}

// = Case: try catch finally (2)
try 		// 0
	x; 	// 1
catch(e) 	// 0
	y; 	// 1
finally  	// 0
	z; 	// 1

// = Case: try catch finally (3)
try 			// 0
	// comment 	// 1
	x; 		// 1
catch(e) 		// 0
	// comment 	// 1
	y; 		// 1
finally  		// 1
	// comment 	// 1
	z; 		// 1

// = Case: Anonymous Function (1)
(function(x) { 	// 0
	x; 		// 1
	y; 		// 1
})(x); 		// 0

// = Case: Anonymous Function (2)
(function(x)  	// 0
{ 			// 0
	x; 		// 1
	y; 		// 1
})(x); 		// 0

// = Case: Anonymous Function (2)
(function(x)  	// 0
{ 			// 1
	x;  		// 1
	y; 		// 1
} 			// 0
)(x); 		// 0

// = Case: Anonymous Function (1)
(function(x) { 	// 0
	x; 		// 1
	y; 		// 1
} 			// 0
)(x); 		// 0

// = Case: Multi Line Invocation (1)
$(document).bind('click', function() { 	// 0
}); 						 	// 0

// = Case: Multi Line Invocation (2)
$(document).bind('click', function() { 	// 0
	x; 						// 1
	y; 						// 1
}); 							// 0


// = Case: COMPLEX
(function(window, undefined) { 				// 0
	// = Class: Test 						// 1
	// 								// 1
	// = Description: This is a  				// 1
	//   test class. 						// 1
	// 								// 1
	var Test = new Class({  				// 1
		initialize: function() { 			// 2
			this.test = test; 			// 3
		},   							// 2

		// = Method: test 				// 2
		//  							// 2
		// = Description:  				// 2
		// 							// 2
		test: function(blah) { 				// 2
			if(blah) { 					// 3
				return "blah"; 			// 4
			} else if(blah === undefined) 	// 3
				return "blahblah"; 		// 4
			else { 					// 3
				// another comment. 		// 4
				return "blahblahblah"; 		// 4
			} 						// 3

			var x = { 					// 3
				y: function() { 			// 4
					for (var i = 0; i < blah.length; i++) { 	// 5
						blah[i]; 		// 6
					}; 				// 5
				} 					// 4
			}; 						// 3

			return new function() { 		// 3
			}; 						// 3
		}, 							// 2

		// = Method: blah 				// 2
		//  							// 2
		// = Description: description 		// 2
		// 							// 2
		blah: function(haha) { 				// 2 
			return this.test; 			// 3
		} 							// 2
	}); 								// 1
})(this); 								// 0


// Case: SKELETON CODE
(function(window, undefined) { 				// 0
	var Skeleton = new Class({ 				// 1
	}); 								// 1

	var Skeleton2 = new Class({ 				// 1
		Extends: Skeleton 				// 2
	}); 								// 1

	var Skeleton3 = new Class({ 				// 1
		skeleton: function() {  			// 2
		}, 							// 2

		objects: function() { 				// 2
			var x, y; 					// 3

			x = {}; 					// 3
			y = []; 					// 3 

			x = { 					// 3
			}; 						// 3

			y =  [ 					// 3
			]; 						// 3

		}, 							// 2

		contrls: function() { 				// 2
			while(true) { 				// 3
			} 						// 3

			do { 						// 3
			} while(true); 				// 3

			with(x) { 					// 3
			} 						// 3

			if (true) { 				// 3
			} else if(true) { 			// 3
			} else { 					// 3
			} 						// 3 

			for (var i = 0; i < blah.length; i++) { 	// 3
			} 							// 3

			switch(true) { 				// 3
				case 'case1': break; 			// 3
				case 'case2': break; 			// 3
				default: 					// 3
			} 						// 3

			try { 					// 3
			} catch (e) { 				// 3
			} finally { 				// 3
			} 						// 3
		} 							// 2
	}); 								// 1
})(this); 								// 0
