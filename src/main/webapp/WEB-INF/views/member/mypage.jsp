<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>마이페이지~</h1>
	${vo.name}님 환영합니다 !
	
	<div>
		가입일자는 ${vo.regDate}
		남은 포인트는 ${vo.TPoint}입니다
	</div>
	
	<a href="./update?id=${vo.id}">회원정보 수정</a>
	
	
</body>
</html>