<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div class="container">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">비밀번호
					찾기</h4>
			</div>
		</div>
		<!-- //////
<div class="mt-2" style="display: flex; height: 45px; width:500px">
	<form:input path="email" id="email" class="form-control" />
	<button type="submit" id="btn" class="btn btn-primary" style="width:200px">ID찾기</button>

</div>
////// -->
		<div>
			<p>
				<label>아이디</label> <input class="w3-input" type="text" id="id"
					name="id" placeholder="회원가입한 아이디를 입력하세요" required
					style="display: flex; height: 45px; width: 500px">
			</p>
			<div style="display: flex; ">
			<p>
				<label>이메일</label> <input class="w3-input" type="text" id="email"
					name="email" placeholder="회원가입한 이메일주소를 입력하세요" required
					style="display: flex; height: 45px; width: 500px">
			</p>
			<p class="w3-center" >
				<button type="button" id="findBtn" style="width: 150px;height: 45px;margin-top: 24px;"
					class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn btn btn-primary">찾기</button>
				<!-- <button type="button" onclick="history.go(-1);"
					class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn btn btn-primary">로그인 페이지</button> -->
			</p>
			</div>
				<div>
	
					<h5>
						<i class="material-icons" style="color: #0F172B !important;">login</i>
						<a href="./login">로그인 페이지</a>
					</h5>
				</div>
		</div>
	</div>

	<script type="text/javascript" src="../resources/js/findPw.js"></script>
</body>
</html>