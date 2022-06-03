<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
</head>
<body>
	<div class="container mt-4">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert">
				<h4 class="text-center" style="text-transform: uppercase;">리 뷰</h4>
			</div>
		</div>
<div class="row justify-content-between">
		<div class="d-flex justify-content-end">
			<form class="d-flex col-4 mb-3 ">
				<select name="kind">
					<option value="col1">제목</option>
					<option value="col2">작 성 자</option>
					<option value="col3">내용</option>

				</select> <input class="form-control me-2" type="search" placeholder="입력하세요."
					aria-label="Search" name="search">
				<button class="btn btn-outline-primary" type="submit">Search</button>
			</form>
		</div>
	</div>
		<div class="row mt-4">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>No.</th>						
						<th>제 목</th>
						<th>여 행 지</th>	
						<th>작 성 자</th>						
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
				</tbody>

			</table>
		</div>

		<div class="row">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link"
						href="./list?pn=${pager.pre?pager.startNum-1:1}&kind=${pager.kind}&search=${pager.search}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>

					<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
						<li class="page-item"><a class="page-link"
							href="./list?pn=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
					</c:forEach>

					<li class="page-item"><a class="page-link"
						href="./list?pn=${pager.next?pager.lastNum+1:pager.lastNum}&kind=${pager.kind}&search=${pager.search}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>

		</div>



	
	
		
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>