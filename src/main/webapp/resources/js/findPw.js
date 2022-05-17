/**
 * 
 */
 
 $("#findBtn").click(function(){
			console.log("click");
			$.ajax({
				url : "./findPw",
				type : "POST",
				data : {
					id : $("#id").val(),
					email : $("#email").val()
				},
				success : function(result) {
					alert(result);
				},
			})
		});