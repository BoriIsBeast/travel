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
			<td>${vo.regDate }</td>
			<td>${vo.amount }</td>
			<td>${vo.total }</td>
		</tr>
		</c:forEach>
		</tbody>
				
	</table>	
	
</div>
</body>
</html>