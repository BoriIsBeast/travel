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
					<th scope="col">여행지</th>
					<th scope="col">카트번호</th>
					<th scope="col">입장권 수</th>
					<th scope="col">선택 날짜</th>
					<th scope="col">총 가격</th>
					<th scope="col">결제 여부</th>
				</tr>
			</thead>
			<c:forEach items="${vo}" var="list">
				<tbody>
					<tr>
						
						<th scope="row">${list.productVOs.name}</th>
						<td>${list.cartNum }</td>

						<td>
						
							<button type="button" id="minus">-</button> 
							<input id="amount"  type="number" data-num="${list.amount}" value="${list.amount}" readonly>
							<button type="button" id="plus">+</button>
						
						</td>
						<td>${list.regDate}</td>
						<td><fmt:formatNumber type="currency" value="${list.total}" /></td>
						<%-- <c:if test="${list.payCheck ne 1}"></c:if> --%>
						<td>${list.payCheck }</td>

					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
	
	<script type="text/javascript" src="../resources/js/cart.js"></script> 
	

</body>
</html>