<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-dark table-hover">
	<thead>
		<tr>
			<th>No.</th>
			<th>제목</th>
			<th>여 행 지</th>	
			<th>작성자</th>			
			<th>날 짜</th>	
			<th>HIT</th>
			<th>추 천</th>	
		</tr>
	</thead>

<tbody>

<c:forEach items="${list}" var="vo">
		<tr>
			<td>${vo.num}</td>
			<td><a class="link-success text-decoration-none" href="./detail?num=${vo.num}">${vo.title}</a></td>
			<td><input type="hidden" name="productNum" value="${vo.productNum}" readonly class="form-control" id="productNum">${vo.name}</td>							
			<td>${vo.id}</td>		
			<td>${vo.regDate}</td>
			<td>${vo.hit}</td>
			<td>${vo.rec}</td>
		</tr>
</c:forEach>
	
<div class="row my-4">

	<nav aria-label="Page navigation example">
		<ul class="pagination">
			

			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<li class="page-item"><a  data-pn="${i}" class="page-link pager"
					href="#">${i}</a></li>
			</c:forEach>

			
		</ul>
	</nav>
</div>