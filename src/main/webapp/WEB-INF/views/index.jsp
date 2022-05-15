<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty member}">
	${member.name}님 반갑습니다
	</c:if>
	
	<c:choose >
		<c:when test="${not empty member}">
			<a href="./member/mypage?id=${member.id}">마이 페이지</a>
			<a href="./member/logout">로그아웃</a>
		</c:when>
		<c:otherwise>
			<a href="./member/join">회원가입</a>
			<a href="./member/login">로그인</a>
		</c:otherwise>
	</c:choose>
	
	
	
	
	
</body>
</html>