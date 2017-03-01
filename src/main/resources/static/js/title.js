$( document ).ready(function() {
    console.log( "ready!" );
    /*$("#box").click(function(){
    	console.log( "Click!!!!" );
    });*/
    
    // Name can't be blank
    $('#contact_name').on('input', function() {
    	var input=$(this);
    	var is_name=input.val();
    	if(is_name){
    		input.removeClass("invalid").addClass("valid");
    	} else {
    		input.removeClass("valid").addClass("invalid");
    	}
    });
});
