/**
 * 
 */
 
 $("#findBtn").click(function(){
			$.ajax({
				url : "/member/findPw",
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