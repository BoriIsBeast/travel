/**
 * 
 */
 const pw=document.getElementById('pw');
 const pwCheck=document.getElementById('pwCheck');
 
 
 
 $("#btn").click(function(){
	console.log("btn");
	g =pw.value;
	console.log(g);
	console.log(pwCheck);
	
	if(pwCheck==pw){
		console.log("헤헷");
	}
	
});