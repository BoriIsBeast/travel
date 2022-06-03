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
	<h5>주문상세 페이지</h5>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>NO.</th>
				<td>여행지 이름</td>
				<td>선택 날짜</td>
				<td>수량</td>
				<td>가격</td>
				
				
				
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="vo" varStatus="status">
		<tr>
			<td>${status.index+1}</td>
			<td>${vo.product.name}</td>
			<td>${vo.regDate}</td>
			<td>${vo.amount}</td>
			<td>${vo.total}</td>
			
		</tr>
			<input type="hidden" id="num" value="${vo.cartPayVOs.num}">
		</c:forEach>
		<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td><button type="button" id="orderDel"  class=" btn btn-primary" data-id="${member.id}">취소/환불</button></td>
		</tr>
		</tbody>
	
				
	</table>	
	<div>
		<button type="button" id="orderList" data-id="${member.id}"  class="col-2 btn btn-primary ">전체 주문내역</button>
	</div>
	
</div>

<script type="text/javascript" src="../resources/js/pay.js"></script>
<script type="text/javascript">
	$("#orderList").click(function(){
		 let id=$(this).attr("data-id");
		 window.location="./orderList?id="+id;
	})

</script>
	

</body>
</html>