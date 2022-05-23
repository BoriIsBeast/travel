<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/summernote.jsp"></c:import>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>코스 추천</h1>
	
		<div class="row justify-content-between">
		<div class="col-5">
			<form class="d-flex" action="./list" method="get">
				<div class="col-4 me-2">
				<select name="kind" class="form-select " aria-label="Default select example">
				  <option value="col1">축제이름</option>
				  <option value="col2">장소</option>
				</select>
				</div>
				<div class="col-6 me-2">
	        	<input name="search" class="form-control" type="search" placeholder="Search" aria-label="Search">
	        	</div>
	        	<div class="col-2">
	        	<button class="btn btn-outline-success" type="submit">Search</button>
	        	</div>
	        	 </form>
		</div>
	</div>
	
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
	
	<a href="./add"><button type="submit" class="btn btn-outline-secondary">ADD</button></a>	

<script type="text/javascript">
$('#summernote').summernote();
</script>
</body>
</html>