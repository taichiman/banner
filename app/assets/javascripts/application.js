
//= require jquery
//= require jquery_ujs

//= require_tree .

function log(){
	try{
		console.log.apply(console,arguments);
	}
	catch(e){
		try{
			opera.postError.apply(opera,arguments);
		}
		catch(e){
			alert(Array.prototype.join.call(arguments,""));
		}
	}
}
