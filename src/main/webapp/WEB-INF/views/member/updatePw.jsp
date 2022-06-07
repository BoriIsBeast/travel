<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
</head>
<body>
<div class="container">
	<div class="row mt-4">
			<div class="alert alert-primary" role="alert" style="background-color: #0F172B !important;">
				<h4 class="text-center" style="text-transform: uppercase;color: #FEA116 !important;">비밀번호 수정</h4>
			</div>
		</div>

	<form:form action="./updatePw" id="form" modelAttribute="memberVO">
	<form:hidden path="id" value="${vo.id}"/>
	<div style="width:600px">
	<label>새 비밀번호</label>
		<input type="password" class="form-control"  id="pwpw"/>
	<label>비밀번호 확인</label>
		<form:password path="pw" class="form-control"  id="pw"/>
	</div>
		<button type="button" id="btn" class="btn btn-primary mt-3 col-3">변경하기</button>
	</form:form>
</div>
<script type="text/javascript">
const form = document.getElementById("form");
$("#btn").click(function(){
	let pwpw=$("#pwpw").val();
	let pw=$("#pw").val();
	if(pwpw==pw){
		form.submit();
	}else{
		alert("비밀번호를 확인하세요");
		
	}
	})
</script>
</body>
</html>
