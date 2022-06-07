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
				<h4 class="text-center" style="text-transform: uppercase;color: #FEA116 !important;">${member.id} 주문 내역</h4>
			</div>
		</div>
<input type="hidden" value="${member.id}">
<table class="table table-hover">
		<thead>
			<tr>
				<th>NO.</th>
				<td>주문번호</td>
				<td>가격</td>
				<td>결제일</td>
				
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="vo" varStatus="status">
		<tr>
			<td>${status.index+1}</td>
			<td><a href="./detailOrder?num=${vo.num}">${vo.regDate}${vo.num}</a></td>
			<td>${vo.price }</td>
			<td>${vo.regDate}</td>
			
		</tr>
		</c:forEach>
		</tbody>
				
	</table>	
	<div>
		<button type="button"  id="gotocart" data-id="${member.id}" class="col-2 btn btn-primary ">장바구니 이동</button>
	</div>
</div>
<script type="text/javascript" src="../resources/js/pay.js"></script>
<script type="text/javascript">
	$("#gotocart").click(function(){
		 let id=$(this).attr("data-id");
		 window.location="../cart/list?id="+id;
	})

</script>

</body>
</html>