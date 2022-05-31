<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>비밀번호 변경</h1>
	
	<form:form action="./updatePw" modelAttribute="memberVO">
	<form:hidden path="id" value="${vo.id}"/>
		<form:password path="pw" id="pw"/>
		
		<button type="submit">변경하기</button>
	
	</form:form>
</body>
</html>