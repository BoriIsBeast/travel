<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/listCategory.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>

</head>
<body>
	<div class="container">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">회원
					관리 페이지</h4>
			</div>
			<%--/////////////////////////////////////// --%>
			<div class="row">
				<div class="d-flex">
					<div style="width: 550px;">
					
						<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="../admin/adminPage">관리자 페이지 이동</a>
								</h6>
							</div>
							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="../product/list">관리자 상품관리</a>
								</h6>
							</div>
							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="./festivalList">여행지관리</a>
								</h6>
							</div>
							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="./festivalList">여행지관리</a>
								</h6>
							</div>
							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="./memberList">멤버관리</a>
								</h6>
							</div>
							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="./sellList">매출</a>
								</h6>
							</div>

					
					</div>
		
					<div class="row" style="margin-left: 10px;">
						<div><h5>총 ${count}명</h5></div>
						<c:forEach items="${vo}" var="list">
							<div class="card col-3" style="width: 20rem; height: 23rem;">
								<div class="card-body">
									<h5 class="card-title">ID : ${list.id}</h5>
									<h6>이름 : ${list.name}</h6>
									<h6 class="card-subtitle mb-2 text-muted">
										가입일 :
										<fmt:formatDate pattern="yyyy년MM월dd일" value="${list.regDate}" />
									</h6>
									<h6>생일 : ${list.birth}</h6>
									<h6>전화번호 : ${list.phone}</h6>
									<h6>이메일 : ${list.email}</h6>
									<h6>포인트 : ${list.TPoint}</h6>
									<p>우편번호 : ${list.zipCode}</p>
									<p>주소 : ${list.address}</p>

									<a href="../member/update?id=${list.id}" class="card-link">회원
										정보 수정</a> <a href="../member/delete?id=${list.id}"
										class="card-link">회원 삭제</a>
								</div>
							</div>
						</c:forEach>
					</div>
					
					
					
				</div>
			</div>
			
			<!-- pager -->
		<div class="col-4 mt-3">
			<nav aria-label="Page navigation example">
				<ul class="pagination align-self-center">
					<li class="page-item"><a class="page-link"
						href="./memberList?pn=${pager.pre?pager.startNum-1:1}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>

					<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
						<li class="page-item"><a class="page-link"
							href="./memberList?pn=${i}">${i}</a></li>
					</c:forEach>

					<li class="page-item"><a class="page-link"
						href="./memberList?pn=${pager.next?pager.lastNum+1:pager.lastNum}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>

		</div>
	</div>



</body>
</html>