<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty findIdResult}">
			<spring:message code="member.findId" arguments="${findIdResult.id}"></spring:message>
		</c:when>
		<c:otherwise>
			<spring:message code="member.notFindId"></spring:message>
		</c:otherwise>
	</c:choose>
	
	<a href="./login">로그인</a>
	<a href="../">홈으로</a>
</body>
</html>