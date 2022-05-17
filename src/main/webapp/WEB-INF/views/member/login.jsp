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
	<h1>로그인 페이지~</h1>
	
	<form:form method="POST" modelAttribute="memberVO">
	<div>
	아이디<form:input path="id"/>
	</div>
	비밀번호<form:password path="pw"/>
	<div>
	<a href="./findId">아이디 찾기</a>
	<a href="./findPw">비번 찾기</a>
	</div>
	
	<div>
	<a href="https://kauth.kakao.com/oauth/authorize
            ?client_id=d764d60bf6e6c77e3b12e8198f193d7c
            &redirect_uri=http://localhost/member/kakaoLogin
            &response_type=code"> <img alt="" src="../resources/img/kakaoLogin.png"></a>
	</div>
	
	<button type="submit">로그인</button>
	</form:form>
</body>
</html>