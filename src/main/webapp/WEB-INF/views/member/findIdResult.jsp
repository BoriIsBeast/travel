<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header.jsp"></c:import>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">


</head>
<body>

	<div class="container">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">Id 찾기 결과</h4>
			</div>
		</div>
	<c:choose>
		<c:when test="${not empty findIdResult}">
			<h4><spring:message code="member.findId" arguments="${findIdResult.id}"></spring:message></h4>
		</c:when>
		<c:otherwise>
			<h4><spring:message code="member.notFindId"></spring:message></h4>
		</c:otherwise>
	</c:choose>
		<div>
<!-- 			<a href="../">홈</a> -->
			<h5><i class="material-icons" style="color: #0F172B !important;">
	lock
		</i><a href="./findPw">password 찾기</a></h5>
		</div>
		<div>
		
			<h5><i class="material-icons" style="color: #0F172B !important;">
		login
		</i><a href="./login">로그인 페이지</a></h5>
		</div>
	</div>
	
</body>
</html>