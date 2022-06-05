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

	<form:form action="./updatePw" modelAttribute="memberVO">
	<form:hidden path="id" value="${vo.id}"/>

		<form:password path="pw" id="pw"/>
		<button type="submit" class="btn btn-primary">변경하기</button>
	
	</form:form>
</div>
</body>
</html>