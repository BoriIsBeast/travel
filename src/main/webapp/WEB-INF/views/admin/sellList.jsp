<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sell</h1>
	<form class="d-flex col-4 mb-3 ">
				<select name="kind">
					<option value="col1">아이디</option>
					<option value="col2">월별 매출</option>
					

				</select> <input class="form-control me-2" type="search" placeholder="검색어를 입력해주세요."
					aria-label="Search" name="search">
				<button class="btn btn-outline-primary" type="submit">Search</button>
			</form>
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
</body>
</html>