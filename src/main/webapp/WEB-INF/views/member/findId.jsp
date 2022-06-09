<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header.jsp"></c:import>

</head>
<body>

	<div class="container">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">Id
					찾기</h4>
			</div>
		</div>

		<form:form modelAttribute="memberVO" id="form" method="POST">
				<label>가입하신 이메일을 입력하세요.</label>
			<div class="mt-2" style="display: flex; height: 45px; width:500px">
				<form:input path="email" id="email" class="form-control" />
				<button type="submit" id="btn" class="btn btn-primary" style="width:200px">ID찾기</button>

			</div>
		</form:form>
		
</div>
</body>
</html>