<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
   rel="stylesheet">
<%-- <c:import url="../temp/header.jsp"></c:import> --%> 
</head>
<body>
	<h3>비밀번호 찾기</h3>
			
			<div>
				<p>
					<label>아이디</label>
					<input class="w3-input" type="text" id="id" name="id" placeholder="회원가입한 아이디를 입력하세요" required>
				</p>
				<p>
					<label>이메일</label>
					<input class="w3-input" type="text" id="email" name="email" placeholder="회원가입한 이메일주소를 입력하세요" required>
				</p>
				<p class="w3-center">
					<button type="button" id="findBtn" class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">찾기</button>
					<button type="button" onclick="history.go(-1);" class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">로그인으로</button>
				</p>
			</div>
			
			<script type="text/javascript" src="../resources/js/findPw.js"></script>
</body>
</html>