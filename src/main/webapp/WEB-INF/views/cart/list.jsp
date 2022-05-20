<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>

</head>
<body>
	<div class="container">
		<h1>${member.id}'s cart List page</h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col"><input type="checkbox" id="totalCheckbox"></th>
					<th scope="col">여행지</th>
					<th scope="col">선택 날짜</th>
					<th width ="30%" scope="col">입장권 수</th>
					<th scope="col">총 가격</th>
					<th scope="col">결제 여부</th>
					<th scope="col">삭제</th>
				</tr>
			</thead>
			<c:forEach items="${vo}" var="list">
				<tbody>
					<tr>
						<th><input type="checkbox" id="checkbox${list.cartNum}"></th>
						<th scope="row">${list.productVOs.name}</th>
						<td><input type="date" id="date${list.cartNum}" value="${list.regDate}" readonly></td>
						<td>
						
						<div class="btnCart" data-num="${list.cartNum}">
							<button type="button" id="minus${list.cartNum}" >-</button> 
							<input class ="col-2" id="amount${list.cartNum}"  type="number" value="${list.amount}" readonly>
							<button type="button" id="plus${list.cartNum}">+</button>
						</div>
						</td>
						
						<td><%-- <fmt:formatNumber type="currency" id="total" value="${list.total}" /> --%>
							<input type="hidden" id="price${list.cartNum}" value="${list.productVOs.price}">
							<input type="text" value="${list.total}" id="total${list.cartNum}" pattern = "###,###" readonly>
							
						</td>
						<c:if test="${list.payCheck ne 1}">
							<td>결제 전</td>
						</c:if>
						<c:if test="${list.payCheck eq 1}">
							<td>결제 완료</td>
						</c:if>
						<td><button type="button" id="deleteBtn${list.cartNum}">x</button></td>
					</tr>
						
			</c:forEach>
			
					
				</tbody>
		</table>
		<button type="button">결제</button>
	</div>
	
	<script type="text/javascript" src="../resources/js/cart.js"></script> 
	

</body>
</html>