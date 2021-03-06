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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style type="text/css">
.card-img-top {
	height: 30rem;
	object-fit: cover;
}

.submenu {
	list-style: none;
}
</style>
</head>
<body>


	<div class="container mt-4">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">여행지
					목록</h4>
				

				<!-- 검색 -->
				<div class="d-flex justify-content-end">
					<form class="d-flex col-4 mb-3 ">
						<select name="kind">
							<option value="col1">지역(도)</option>
							<option value="col2">지역(시)</option>
							<option value="col3">여행지 이름</option>

						</select> <input class="form-control me-2" type="search"
							placeholder="입력하세요." aria-label="Search" name="search">
						<button class="btn btn-outline-primary" type="submit">Search</button>
					</form>
				</div>
			</div>
		</div>

		<nav class="navbar navbar-expand-lg navbar-dark bg-primary"
			style="background-color: #0F172B !important;">
			<div class="container-fluid"
				style="background-color: #0F172B !important;">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ul">

						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="./list">지역 - </a></li>
						<li>
						<div class="dropdown">	<a style="color: #FEA116 !important"
									class="btn  dropdown-toggle nav-link active" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false">서울</a>

								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item"
										href="./list?search1=서울">서울 전체</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=서울&search2=마포구">마포구</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=서울&search2=강남구">강남구</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=서울&search2=동대문구">동대문구</a></li>
								</ul>
							</div></li>
							
							<li><div class="dropdown">
								<a style="color: #FEA116 !important"
									class="btn  dropdown-toggle nav-link active" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false"> 경기 </a>

								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item"
										href="./list?search1=경기">경기 전체</a></li>
									<li><a class="dropdown-item"
									href="./list?search1=경기&search2=인천">인천</a></li>
								<li><a class="dropdown-item"
									href="./list?search1=경기&search2=수원">수원</a></li>
								<li><a class="dropdown-item"
									href="./list?search1=경기&search2=파주">파주</a></li>
								</ul>
							</div></li>
							
							<li><div class="dropdown">
								<a style="color: #FEA116 !important"
									class="btn  dropdown-toggle nav-link active" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false">강원</a>

								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item"
										href="./list?search1=강원">강원 전체</a></li>
									<li><a class="dropdown-item"
									href="./list?search1=강원&search2=강릉">강릉</a></li>
								<li><a class="dropdown-item"
									href="./list?search1=강원&search2=동해">동해</a></li>
								<li><a class="dropdown-item"
									href="./list?search1=강원&search2=속초">속초</a></li>
								</ul>
							</div></li>
							
							<li><div class="dropdown">
								<a style="color: #FEA116 !important"
									class="btn  dropdown-toggle nav-link active" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false">경상</a>

								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item"
										href="./list?search1=경상">경상 전체</a></li>
								<li><a class="dropdown-item"
									href="./list?search1=경상&search2=부산">부산</a></li>
								<li><a class="dropdown-item"
									href="./list?search1=경상&search2=경주">경주</a></li>
								<li><a class="dropdown-item"
									href="./list?search1=경상&search2=문경">문경</a></li>
								
								</ul>
							</div></li>
							
							<li><div class="dropdown">
								<a style="color: #FEA116 !important"
									class="btn  dropdown-toggle nav-link active" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false">전라</a>

								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item"
										href="./list?search1=전라">전라 전체</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=전라&search2=광주">광주</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=전라&search2=목포">목포</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=전라&search2=여수">여수</a></li>
								</ul>
							</div></li>
							
							<li><div class="dropdown">
								<a style="color: #FEA116 !important"
									class="btn  dropdown-toggle nav-link active" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false">충청</a>

								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item"
										href="./list?search1=충청">충청 전체</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=충청&search2=대전">대전</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=충청&search2=제천">제천</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=충청&search2=단양">단양</a></li>
								</ul>
							</div></li>
							
							<li><div class="dropdown">
								<a style="color: #FEA116 !important"
									class="btn  dropdown-toggle nav-link active" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown"
									aria-expanded="false">제주</a>

								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item"
										href="./list?search1=제주">제주 전체</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=제주&search2=제주시">제주시</a></li>
									<li><a class="dropdown-item"
										href="./list?search1=제주&search2=서귀포시">서귀포시</a></li>
								</ul>
							</div></li> 
							



				

					</ul> 
				</div>
			</div>
		</nav>

		<!-- 카테고리 -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary "
			style="background-color: #0F172B !important;">
			<div class="container-fluid">
				<div class="collapse navbar-collapse"
					style="background-color: #0F172B !important;"
					id="navbarSupportedContent">
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


		<nav class="navbar navbar-expand-lg navbar-dark bg-primary"
			style="background-color: #0F172B !important;">
			<div class="container-fluid"
				style="background-color: #0F172B !important;color: #FEA116 !important;"">
				<div class="collapse navbar-collapse" id="navbarSupportedContent" style="color: #FEA116 !important;">
					<h6 style="color: #FEA116 !important;margin-left: 3px;">${param.search1}</h6>
					<h6 style="color: #FEA116 !important;margin-left: 3px;">${param.search2}</h6>
					<h6 style="color: #FEA116 !important;margin-left: 3px;">${param.category}</h6>

					<c:if test="${param.search ne null}">
						검색어 : <h4 style="color: #FEA116 !important;margin-left: 3px;">${param.search}</h4>
					</c:if>

				</div>
			</div>
		</nav>
	
		<div class="mt-2">
			<h5>총 ${count}건</h5>
		</div>
		
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
							<c:if test="${list.price eq 0 }">
								무료 입장
							</c:if>
							<c:if test="${list.price ne 0 }">
							<fmt:formatNumber type="currency" value="${list.price}" />
							원
							</c:if>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		

		<!-- pager -->
		<div class="col-4 mt-3">
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

		<c:if test="${member.getTType() == 1}">
			<!-- add 버튼 -->
				<div>
				<button type="button" class="col-2 btn btn-primary mt-4" id="productAdd">여행지 추가하기</button>
			</div>
		</c:if>
</div>
	
	<script type="text/javascript">
		$(".listDetail").click(function() {
			let productNum = $(this).attr("data-num");
			location.href = "./detail?productNum=" + productNum;
		})

		$("#productAdd").click(function(){
			location.href = "./add";
		})
	</script>
</body>
</html>