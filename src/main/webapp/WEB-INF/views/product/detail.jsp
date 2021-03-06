<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>

<!-- //제이쿼리 ui css -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>

<div class="container">

	<div class="row mt-4">
		<div class="alert alert-primary" role="alert" style="background-color: #0F172B !important;">
			<h4 class="text-center" style="text-transform: uppercase;color: #FEA116 !important;">${vo.name}</h4>
		</div>
	</div>
		
		<c:if test="${vo.price ne 0 && member.getTType()==0}">
		<div class="row float-end" >
			<h4>입장권 구매</h4>
					<div class="carousel-inner" >
						 <input type="hidden" id="${member.id}" readonly/>
						<div id="datepicker1"></div>
						선택날짜 : <input type="date" id="dateResult" readonly/>
						<div>
						<c:if test="${vo.price eq 0 }">
								무료 입장
							</c:if>
							<c:if test="${vo.price ne 0 }">
							<fmt:formatNumber type="currency" value="${vo.price}" />
							원
							</c:if>
						</div>
						<div>
							구입 매수 : <select name="amount" id="amount" style="margin: 0 0.5rem 0 0.5rem">
								<option>선택해주세요</option>
								<option value="1">1매</option>
								<option value="2">2매</option>
								<option value="3">3매</option>
								<option value="4">4매</option>
								<option value="5">5매</option>
							</select>
						</div>
						<div class="d-flex ">
							총 금액 : <input type="number" id="total" readonly="readonly"
								style="margin-left: 0.5rem;width: 85px;" />원
						</div>
						<div>
							<button type="button" class="btn btn-primary" id="cartBtn" data-id="${member.id}" data-num="${vo.productNum}">장바구니</button>
							<button type="button" class="btn btn-primary" id="directPay"data-id="${member.id}" data-num="${vo.productNum}">바로결제</button>
							
						</div>
					</div>
					</div>
				</c:if>
				
		<div class="card" style="width: 50rem;">
		
			<div id="carouselExampleControls" class="carousel slide"
				 data-bs-ride="carousel">
				<div class="carousel-inner " style="width: 100%;">
					<c:forEach items="${vo.filesVOs}" var="i" varStatus="status">

						<c:if test="${status.first}">
							<div class="carousel-item active">
								<img src="/resources/upload/product/${i.fileName}"
									class="d-block w-100" alt="...">
							</div>
						</c:if>
						<c:if test="${not status.first}">
							<div class="carousel-item">
								<img src="/resources/upload/product/${i.fileName}"
									class="d-block w-100" alt="...">
							</div>
						</c:if>

					</c:forEach>

					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>


				
			</div>

			<div class="card-body">
				
				<h5 class="card-title" id="name" data-name="${vo.name}">${vo.name}</h5>
				<p class="card-text">${vo.contents}</p>
			</div>
			<input type="hidden" readonly id="productNum" name="productNum" value="${vo.productNum}">
			<ul class="list-group list-group-flush">				
				<li class="list-group-item" id="address"
					data-address="${vo.address}">주소 : ${vo.address}</li>
				<li class="list-group-item">홈페이지 : <a href="${vo.homePage}">${vo.homePage}</a></li>
				<li class="list-group-item">입장료 : <fmt:formatNumber
						type="currency" value="${vo.price}" />원
				</li>
				<c:if test="${member.getTType() == 1 && member.id eq vo.id && vo.price ne 0 || member.getTType() == 2}">
				<li class="list-group-item" style="color:red;">티켓 잔여 수량 : ${vo.maxCount}</li>
				</c:if>
				
			</ul>
			<!-- 지도생성 -->
			<div id="map" style="width: 100%; height: 400px;"></div>
	
			<!--버튼 -->
			<c:if test="${member.getTType() == 1 && member.id eq vo.id || member.getTType()==2}">
				<div class="d-flex justify-content-end">
					<button type="button" class="col-2 btn btn-primary " data-num="${vo.productNum}" id="update">Update</button>
					<button type="button" class="col-2 btn btn-primary" data-num="${vo.productNum}" id="delete">Delete</button>
				</div>
			</c:if>
			
			<div>
					<a href="../tReview/add?productNum=${vo.productNum}"><button type="button" class="btn btn-primary" id="reBtn" data-num="${vo.productNum}">리뷰 쓰기</button></a>
				<button type="button" class="col-1 btn btn-primary" id="gotolist">List</button>
			</div>
			
		

		</div>
	

	<div class="row" id="list" style="width: 50%; height: 350px;">
		<!-- 리뷰 ajax, 제목, 작성자, 내용, 여행지 이름 -->
	</div>
	
</div>
	

	<!-- kakao map js -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=64cdb28bf8dab29f38f663d6acaaeb38&libraries=services"></script>
	<script type="text/javascript" src="../resources/js/map.js"></script>

	<!--  제이쿼리 ui js -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="../resources/js/calendar.js"></script>

	 <script type="text/javascript" src="../resources/js/cart.js"></script> 

	<script type="text/javascript">
		calendar();
		
		$('#amount').change(function(){
			let totalPrice=$('#amount').val()*${vo.price};
			$('#total').val(totalPrice);

			
		});
		
		$("#list").on("click",".pager",function(){
			let checkPn=$(this).attr("data-pn");
			if(checkPn >0){
				getList(checkPn);
			}else{
				alert("마지막 입니다")
			}
		});
		getList(1);
		function getList(pn){
			let productNum=$("#productNum").val();
			console.log("start");
			$.ajax({
				type : "GET",
				url : "./ajaxList",
				data:{ 
					productNum:productNum,
					pn:pn,
					perPage:5
				},
				success:function(data){
					$("#list").html(data.trim());
				}
			});
		} 

	
		cartAdd();
	
		$("#gotolist").click(function(){
			window.location="./list";
		})	
		$("#update").click(function(){
			alert("게시물 수정 하시겠습니까?")
			window.location="./update?productNum="+${vo.productNum};
		})	
		$("#delete").click(function(){
			alert("게시물 삭제 하시겠습니까?")
			window.location="./delete?productNum="+${vo.productNum};
		})	
		
	</script>

</body>
</html>
