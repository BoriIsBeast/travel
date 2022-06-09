<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row mt-4">
		<c:if test="${member.getTType() == 1}">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">셀러 페이지</h4>
			</div>
		</c:if>
		<c:if test="${member.getTType() == 2}">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">관리자 페이지</h4>
			</div>
		</c:if>


			<%-- <c:if test="${member.getTType() == 1}">
	<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">셀러 페이지</h4>
			</div>
	<div>
		<a href="./productList">상품 리스트</a>
	</div>
	
	<div>
	<a href="./festivalList">여행지관리</a>
	</div>
	<div>
    <a href="./bestList">코스관리</a>
    </div>
	</c:if>
	<c:if test="${member.getTType() == 2}">
	<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">총 관리자 페이지</h4>
			</div>
            <div>
       			<a href="../product/list">관리자 상품관리</a>
       	    </div>
       	    <div>
       	    <a href="./festivalList">여행지관리</a>
       		</div>
       		<div>
       	    <a href="../Tbest/list">코스관리</a>
       		</div>
       		<div>
       			<a href="./memberList">멤버관리</a>
       		</div>
	       <div>
	       <a href="./sellList">매출</a>
	       </div> 
    </c:if> --%>
			<div class="row">
				<div class="d-flex">
					<div style="width: 550px;">
						<c:if test="${member.getTType() == 1}">

							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="./productList">여행지 관리</a>
								</h6>
							</div>

							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="./festivalList">페스티벌 관리</a>
								</h6>
							</div>
							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="./bestList">코스 관리</a>
								</h6>
							</div>
						</c:if>

						<c:if test="${member.getTType() == 2}">
							
							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="../product/list">전체 여행지 관리페이지</a>
								</h6>
							</div>
							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="./festivalList">전체 축제 관리페이지</a>
								</h6>
							</div>
							<div>
							<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="../Tbest/list">전체 코스 관리페이지</a>
								</h6>  
							</div>
							<div>
								<h6>
									<i class="material-icons"> expand_circle_down </i><a
										href="./memberList">멤버 관리 페이지</a>
								</h6>
							</div>
							

						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>