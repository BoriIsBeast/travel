<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>id찾기 페이지</h1>
	
	<form:form modelAttribute="memberVO" method="POST">
		가입하신 이메일을 입력하세요<form:input path="email"/>
		
		<button type="submit">ID찾기</button>
		
	</form:form>
	
	
	
</body>
</html>