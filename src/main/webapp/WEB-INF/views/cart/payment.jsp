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
<h1>결제 page</h1>

<!-- 회원이 장바구니 list 에서 check한 cartNum들 결제 전 출력 page -->
	<table class="table table-hover">
		<thead>
			<tr>
				<th>NO.</th>
				<th scope="row">여행지</th>
				<td>선택 날짜</td>
				<td>수량</td>
				<td>가격</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach  items="${vo}" var="list" varStatus="status">	
		<input type="hidden" value="${list.cartNum}" class="cartNum" readonly>
		<tr>
			
			<td>${status.index+1}</td>
			<th scope="row">${list.productVOs.name}</th>
			<td><input type="date" value="${list.regDate}" readonly></td>
			<td><input type="number" value="${list.amount}" readonly></td>
			<td><input type="text" value="${list.total}" class="total" id="total${list.cartNum}" readonly></td>
		</tr>
			
		</c:forEach>
		<tr>
					<td></td>
					<td></td>
					<td></td>
					
					<th>총 금액</th>
					<td><input type="text" id="totalPrice" readonly></td>
				</tr>
		</tbody>
				
	</table>				


	<div>
		<button type="button" id="gotocart" data-id="${member.id}">장바구니 이동</button>
	</div>
	<div>
		<button type="button" id="pay" data-id="${member.id}">결제하기</button>
	</div>
</div>

<script type="text/javascript" src="../resources/js/pay.js"></script>

</body>
</html>