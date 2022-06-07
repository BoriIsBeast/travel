<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<div class="container">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert" style="background-color: #0F172B !important;">
				<h4 class="text-center" style="text-transform: uppercase;color: #FEA116 !important;">축제 정보</h4>
				
				
				<div class="row justify-content-end">
		
			<form class="d-flex" action="./list" method="get">
				<div class="col-4 mb-3 ">
				<select name="kind" class="form-select " aria-label="Default select example">
				  <option value="col1">축제이름</option>
				  <option value="col2">장소</option>
				</select>
				</div>
				<div class="col-6 me-2">
	        	<input name="search" class="form-control" type="search" placeholder="Search" aria-label="Search">
	        	</div>
	        	<div class="col-2">
	        	<button class="btn btn-outline-primary" type="submit">Search</button>
	        
	        	</div>
	        	 </form>
		
	</div>
			</div>
		</div>
	<h1>축제 정보</h1>
	
		
	
	<c:forEach items="${list}" var="vo">
	<div class="card col-3 detail" data-num="${vo.num}">
  <img src="../resources/upload/festival/${vo.filesVOs[0].fileName}" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">${vo.name}</h5>
    <p class="card-text">${vo.location}</p>
    <a href="./detail?num=${vo.num}" class="btn btn-primary">더보기..</a>
    <div class="card-footer">
    ${vo.startDate} ~ ${vo.finishDate}
  </div>
  </div>
</div>
	</c:forEach>
	
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="./list?pn=${pager.pre?pager.startNum-1:1}&kind=${pager.kind}$search=${pager.search}" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
    <li class="page-item"><a class="page-link" href="./list?pn=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
    </c:forEach>

    <li class="page-item">
      <a class="page-link" href="href="./list?pn=${pager.next?pager.lastNum+1:pager.lastNum}&nind=${pager.kind}&search=${pager.search}" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
	<c:if test="${member.getTType() == 1 || member.getTType() == 2}">
			<!-- add 버튼 -->
			<div class="row mt-4">
				<a href="./add"><button type="submit" class="btn btn-outline-secondary">ADD</button></a>
			</div>
		</c:if>
	
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>