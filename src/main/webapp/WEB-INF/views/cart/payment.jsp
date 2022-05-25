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
<h1>결제 page</h1>

<c:forEach items="${vo}" var="list">
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="row">${list.productVOs.name}</th>
				<td><input type="date" value="${list.regDate}" readonly></td>
				<td><input type="number" value="${list.amount}" readonly></td>
				<td><input type="text" value="${list.cartNum}" class="cartNum" readonly></td>
				<td><input type="text" value="${list.total}" class="total" readonly></td>
			</tr>
		</thead>		
	</table>				
</c:forEach>	



<div>
	<button type="button" id="gotocart" data-id="${member.id}">장바구니 이동</button>
</div>
<div>
	<button type="button" id="pay" data-id="${member.id}">결제하기</button>
</div>

<script type="text/javascript" src="../resources/js/pay.js"></script>

</body>
</html>