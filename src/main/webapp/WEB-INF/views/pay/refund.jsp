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
				<h4 class="text-center" style="text-transform: uppercase;color: #FEA116 !important;">${member.id} 취소/환불 내역</h4>
			</div>
		</div>
		<input type="hidden" value="${member.id}">
		
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
		<c:forEach items="${list}" var="vo" varStatus="status">	
		<tr>
			
			<td>${status.index+1}</td>
			<th scope="row">${vo.productVOs.name}</th>
			<td><input type="date" value="${vo.regDate}" readonly></td>
			<td><input type="number" value="${vo.amount}" readonly></td>
			<td><input type="text" value="${vo.total}" readonly></td>
		</tr>
			
		</c:forEach>
		</tbody>
				
	</table>
		
		
		
		
		</div>

</body>
</html>