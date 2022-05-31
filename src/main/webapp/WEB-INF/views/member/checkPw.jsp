<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1>비밀번호 체크</h1>
	<h2>현재 비밀번호를 입력하세요</h2>
	
	<input type="text" id="pwCheck" readonly="readonly" value="${check.pw}">
	
	<form action="./checkPw" method="POST">
	<input name="pw" type="text" id="pw" placeholder="비밀번호를 입력하세요">
	<button type="button" id="btn">확인</button>
	</form>
	
	<script type="text/javascript" src="../resources/js/pwCheck.js"></script>
</body>
</html>