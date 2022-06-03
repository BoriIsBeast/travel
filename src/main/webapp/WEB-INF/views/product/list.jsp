<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>

<style type="text/css">
.card-img-top {
	height: 30rem;
	object-fit: cover;
}
.list{
	color:black;
}
.navbar-dark .ul .nav-link.active {
    color: black;
}

</style>
</head>
<body>


	<div class="container">
		<h1>ListPage</h1>

		<!-- 검색 -->
		<div class="d-flex justify-content-end">
			<form class="d-flex col-4 mb-3 ">
				<select name="kind">
					<option value="col1">지역(도)</option>
					<option value="col2">지역(시)</option>
					<option value="col3">여행지 이름</option>

				</select> <input class="form-control me-2" type="search" placeholder="입력하세요."
					aria-label="Search" name="search">
				<button class="btn btn-outline-primary" type="submit">Search</button>
			</form>
		</div>
		
			

		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container-fluid">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ul">

						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="./list">지역 List - </a></li>
						

						<li class="nav-item"><a class="nav-link active"
							href="./list?kind=col1&search=서울">서울</a>
							<ul class="submenu">
								<li class="sub1"><a class ="list" href="./list?search1=서울&search2=마포구">마포구</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=서울&search2=강남구">강남구</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=서울&search2=동대문구">동대문구</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link active"
							href="./list?search1=경기">경기</a>
							<ul class="submenu">
								<li class="sub1"><a class ="list" href="./list?search1=경기&search2=인천">인천</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=경기&search2=수원">수원</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=경기&search2=파주">파주</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link active"
							href="./list?kind=col1&search=강원">강원</a>
							<ul class="submenu">
								<li class="sub1"><a class ="list" href="./list?search1=강원&search2=강릉">강릉</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=강원&search2=동해">동해</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=강원&search2=속초">속초</a></li>
							</ul>
						</li>
						<li class="nav-item"><a class="nav-link active"
							href="./list?search1=경상">경상</a>
							<ul class="submenu">
								<li class="sub1"><a class ="list" href="./list?search1=경상&search2=부산">부산</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=경상&search2=경주">경주</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=경상&search2=문경">문경</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link active"
							href="./list?kind=col1&search=전라">전라</a>
							<ul class="submenu">
								<li class="sub1"><a class ="list" href="./list?search1=전라&search2=광주">광주</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=전라&search2=목포">목포</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=전라&search2=여수">여수</a></li>	
							</ul>
						</li>
						<li class="nav-item"><a class="nav-link active"
							href="./list?kind=col1&search=충청">충청</a>
							<ul class="submenu">
								<li class="sub1"><a class ="list" href="./list?search1=충청&search2=대전">대전</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=충청&search2=단양">단양</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=충청&search2=제천">제천</a></li>	
							</ul>	
						</li>
						<li class="nav-item"><a class="nav-link active"
							href="./list?kind=col1&search=제주">제주</a>
							<ul class="submenu">
								<li class="sub1"><a class ="list" href="./list?search1=제주&search2=광주">제주시</a></li>
								<li class="sub1"><a class ="list" href="./list?search1=제주&search2=목포">서귀포시</a></li>
								
							</ul>	
						</li>

					</ul>
				</div>
			</div>
		</nav>

		<!-- 카테고리 -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container-fluid">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ul">
						<li class="nav-item "><a class="nav-link active"
							aria-current="page" href="./list">카테고리 - </a></li>
						<li class="nav-item"><a class="nav-link active category"
							aria-current="page"
							href="./list?search1=${param.search1}&search2=${param.search2}&category=가족과 함께"
							data-cat="가족과 함께">#가족과 함께</a></li>
						<li class="nav-item"><a class="nav-link active category"
							aria-current="page"
							href="./list?search1=${param.search1}&search2=${param.search2}&category=연인과 함께"
							data-cat="연인과 함께">#연인과 함께</a></li>
						<li class="nav-item"><a class="nav-link active category"
							aria-current="page"
							href="./list?search1=${param.search1}&search2=${param.search2}&category=나홀로 여행"
							data-cat="나홀로 여행">#나홀로 여행</a></li>
						<li class="nav-item"><a class="nav-link active category"
							aria-current="page"
							href="./list?search1=${param.search1}&search2=${param.search2}&category=자연친화적인"
							data-cat="자연친화적인">#자연친화적인</a></li>
						<li class="nav-item"><a class="nav-link active category"
							aria-current="page"
							href="./list?search1=${param.search1}&search2=${param.search2}&category=힐링 여행"
							data-cat="힐링 여행">#힐링 여행</a></li>
						<li class="nav-item"><a class="nav-link active category"
							aria-current="page"
							href="./list?search1=${param.search1}&search2=${param.search2}&category=기타"
							data-cat="기타">#기타</a></li>

					</ul>
				</div>
			</div>
		</nav>


		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container-fluid">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<h4>${param.search1}</h4>
					<h4>${param.search2}</h4>
					<h4>${param.category}</h4>

					<c:if test="${param.search ne null}">
						검색어 : <h4>${param.search}</h4>
					</c:if>

				</div>
			</div>
		</nav>

		<!-- card list -->
		<div class="row row-cols-5 row-cols-md-5 g-4">
			<c:forEach items="${vo}" var="list">
				<div class="col">
					<div class="card listDetail" data-num="${list.productNum}">
						<img src="/resources/upload/product/${list.filesVOs[0].fileName}"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">${list.name}</h5>
						<%-- 	<p class="card-text">${list.address}</p> --%>
						
								<fmt:formatNumber type="currency" value="${list.price}" />원
							
							
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<!-- pager -->
		<div class="col-4">
			<nav aria-label="Page navigation example">
				<ul class="pagination align-self-center">
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

		<c:if test="${member.getTType() == 1 || member.getTType() == 2}">
			<!-- add 버튼 -->
			<div class="row mt-4">
				<a href="/product/add">Add</a>
			</div>
		</c:if>




	</div>


	<script type="text/javascript">
		$(".listDetail").click(function() {
			let productNum = $(this).attr("data-num");
			location.href = href = "./detail?productNum=" + productNum;
		})
	</script>
</body>
</html>