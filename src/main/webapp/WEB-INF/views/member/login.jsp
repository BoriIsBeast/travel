<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header.jsp"></c:import>
</head>
<body>
<div class="container text-center" >
	<h1>로그인 페이지~</h1>
		<div style="margin-top:200px;">
			<form:form method="POST" modelAttribute="memberVO">
				<div>
				아이디<form:input path="id"/>
				</div>
				비밀번호<form:password path="pw"/>
				<div>
				<a href="./findId">아이디 찾기</a>
				<a href="./findPw">비번 찾기</a>
				</div>
				
				
				
				
				<button type="submit" class="col-1 btn btn-primary ">로그인</button>
			</form:form>
		</div>
	</div>
</body>
</html>