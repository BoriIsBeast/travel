<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
</head>
<body>
<div class="container">
	<div class="row mt-4">
			<div class="alert alert-primary" role="alert" style="background-color: #0F172B !important;">
				<h4 class="text-center" style="text-transform: uppercase;color: #FEA116 !important;">${member.id} 마이페이지</h4>
			</div>
		</div>
	${vo.name}님 환영합니다 !
	
	<div>
		가입일자는 ${vo.regDate}
		남은 포인트는 ${vo.TPoint}입니다
	</div>
	
	<a href="./update?id=${vo.id}">회원정보 수정</a>
	<a href="./updatePw?id=${vo.id}">비밀번호 변경</a>
	<a href="../cart/list?id=${vo.id}">장바구니</a>
	<a href="../pay/orderList?id=${vo.id}">주문내역</a>
	<a href="../pay/refund?id=${vo.id}">취소/환불 내역</a>
</div>

	
	
</body>
</html>