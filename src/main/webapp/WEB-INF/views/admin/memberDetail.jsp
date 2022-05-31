<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>detail</h1>
		
						회원아이디 : ${list.id}
						회원 이름  : ${list.name}
						가 입 일  : <fmt:formatDate pattern="yyyy년MM월dd일" value="${list.regDate}" />
						생    일  : ${list.birth}
						전 화 번 호 : ${list.phone}
						이  메  일 :${list.email}
						보유 포인트 :${list.TPoint}
						${list.zipCode}
						${list.address}
						
						<a href="../member/update?id=${list.id}"> 회원정보 수정</a>
	
</body>
</html>