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
<h1>주문내역 페이지</h1>
<input type="hidden" value="${member.id}">
<table class="table table-hover">
		<thead>
			<tr>
				<th>NO.</th>
				<td>주문번호</td>
				<td>가격</td>
				<td>결제일</td>
				<td>취소/환불</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="vo" varStatus="status">
		<tr>
			<td><a href="./detailOrder?num=${vo.num}">${status.index+1}</a></td>
			<td></td>
			<td>${vo.price }</td>
			<td>${vo.regDate}</td>
			<td><button type="button">X</button></td>
		</tr>
		</c:forEach>
		</tbody>
				
	</table>	
</div>


</body>
</html>