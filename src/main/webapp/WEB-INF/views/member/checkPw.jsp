<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>비밀번호 체크</h1>
	<h2>현재 비밀번호를 입력하세요</h2>
	<form action="./checkPw" method="POST">
	<input name="pw" id="pw" placeholder="비밀번호를 입력하세요">
	<button type="submit">확인</button>
	</form>
</body>
</html>