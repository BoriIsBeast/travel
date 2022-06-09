<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<meta charset="UTF-8">
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	&nbsp;
	<div class="container">
		&nbsp;		
		<div class="alert alert-primary" role="alert"
			style="background-color: #0F172B !important;">
			<h4 class="text-center"
				style="text-transform: uppercase; color: #FEA116 !important;">${vo.name}</h4>
		</div>
		<div class="col-sm-4">
			<img src="../resources/upload/festival/${vo.filesVOs[0].fileName}"
				class="card-img-top" alt="...">
		</div>

		<div class="accordion" id="accordionPanelsStayOpenExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="panelsStayOpen-headingOne">
					<button class="accordion-button" type="button"
						data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
						aria-controls="panelsStayOpen-collapseOne">#1 제목</button>
				</h2>
				<div id="panelsStayOpen-collapseOne"
					class="accordion-collapse collapse show"
					aria-labelledby="panelsStayOpen-headingOne">
					<div class="accordion-body">
						<strong>${vo.name}</strong>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
						aria-controls="panelsStayOpen-collapseTwo">#2 축제 설명</button>
				</h2>
				<div id="panelsStayOpen-collapseTwo"
					class="accordion-collapse collapse"
					aria-labelledby="panelsStayOpen-headingTwo">
					<div class="accordion-body">
						<strong> ${vo.detail} </strong>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="panelsStayOpen-headingThree">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseThree"
						aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
						#3 상세정보</button>
				</h2>
				<div id="panelsStayOpen-collapseThree"
					class="accordion-collapse collapse"
					aria-labelledby="panelsStayOpen-headingThree">
					<div class="accordion-body">

						<strong>
						시작일 : ${vo.startDate} <br>
						종료일 :${vo.finishDate} <br>
						장소 : ${vo.location} <br>
						홈페이지 : ${vo.homePage} <br>
						관람가능연령 : ${vo.age} <br>
						전화번호 : ${vo.phone}
						</strong>
					</div>
				</div>
			</div>
		</div>
		&nbsp;
		<div style="display: block;">

			<div class="container my-4">
				<div class="col-2 d-flex">
					<a href="./list" role="button" class="btn btn-success mx-1">목록</a>
					<c:if test="${member.id eq vo.id}">
						<a href="./update?num=${vo.num}" role="button"
							class="btn btn-outline-danger">수정</a>
						<a href="./delete?num=${vo.num}"><button type="button"
								class="btn btn-outline-danger">삭제</button></a>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>