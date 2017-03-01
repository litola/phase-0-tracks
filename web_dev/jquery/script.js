//wait until the page is loadded
$(document).ready(function(){
	//h1 header change color on hover
	$("h1").on({
		mouseenter: function(){$(this).css("color","red")},
		mouseleave: function(){$(this).css("color","black")}
	});
	//hide text p-one when button btn-hide is clicked
	$( "#btn-hide" ).click(function( event ) {
			$("#p-one").hide(500);
    });
	//Show text p-one when button btn-show is clicked
	$( "#btn-show" ).click(function( event ) {
			$("#p-one").show(500);
    });
	//Toggle text p-one
	$( "#btn-toggle" ).click(function( event ) {
			$("#p-one").toggle(500);
    });
	//console log when p-two is clicked or hover 
	$("#p-two").hover(function(){ console.log( "text was hovered!" )}); 
	$("#p-two").click(function(){ console.log( "text was clicked!") }); 
	//gets values from input 1 and 2 and converts them to int and add alert the answer
	//set value of total in answer box	
	$("#btn-add").click(function() { 
			var a = parseInt($("#input-1").val(),10);
			var b = parseInt($("#input-2").val(),10);
			var total = a + b;
			$("#answer").val(total);
			// alert( "op: " + a + " + " + b + " = " + total);
 	});
 	//
 	$("#total").val(0) 
 	$("#btn-plus-1").click(function(){
 		val = parseInt($("#total").val(),10) + 1;
 		$("#total").val(val);
 	});
	$("#btn-minus-1").click(function(){
		val = parseInt($("#total").val(),10) - 1;
		$("#total").val(val);
 	});
});

