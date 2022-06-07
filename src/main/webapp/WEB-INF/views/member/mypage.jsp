<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>
#modal {
	display: none;
	z-index: 1;
	background-color: rgba(0, 0, 0, .3);
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
}

#modal>#content {
	width: 420px;
	margin: 100px auto;
	padding: 20px;
	position: relative;
	background-color: #0F172B !important;
}

#modal #btnClose {
	position: absolute;
	top: 4px;
	right: 4px;
	font-size: 20px;
	border: 0;
}

#modal #btnClose:hover, #modal #btnClose:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">${member.id}
					마이페이지</h4>
			</div>
		</div>
		<h4>${vo.name}님 환영합니다 !</h4>
		<h5>가입일 <fmt:formatDate pattern="yyyy년MM월dd일" value="${vo.regDate}" /></h5>
		<div>
			<i class="material-icons" style="color: #0F172B !important;">settings</i>
		<a href="./update?id=${vo.id}">회원정보 수정</a>
		</div>
		<div>
			<i class="material-icons" style="color: #0F172B !important;">lock</i>
			<a href="#" id='btnOpen'>비밀번호 변경</a>
			<!-- 비밀번호 확인 모달 창 -->
			<div id='modal'>
				<div id='content'>
					<input type='button' value='X' class="btn btn-primary"
						id='btnClose' /> <img alt="" src="../resources/img/logo.jpg">
					<label style="color: #FEA116 !important;">기존 비밀번호를 입력하세요</label><br />

					<input type='password' id='pwd' class="mt-2" data-pw="${vo.pw}"
						data-id="${vo.id}"
						style="width: 300px; height: 30px; border: 0; border-radius: 15px; outline: none; padding-left: 10px;" />
					<input type='button' style="margin-left: 5px"
						class="btn btn-primary" value='확인' id='btnCheck' />

				</div>
			</div>
		</div>
		<div>
			<i class="material-icons" style="color: #0F172B !important;">shopping_cart</i>
			<a href="../cart/list?id=${vo.id}">장바구니</a>
		</div>
		<div>
			<i class="material-icons" style="color: #0F172B !important;">format_list_bulleted</i>
			<a href="../pay/orderList?id=${vo.id}">주문내역</a>
		</div>
		<div>
			<i class="material-icons" style="color: #0F172B !important;">priority_high</i>
			<a href="../pay/refund?id=${vo.id}">취소/환불 내역</a>
		</div>
	</div>
	<script type="text/javascript" src="../resources/js/mypage.js"></script>


</body>
</html>