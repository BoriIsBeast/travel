<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩  -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>

	<div class="card" style="width: 50rem;">
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
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
			</div>
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

		<div class="card-body">
			<h5 class="card-title">${vo.name}</h5>
			<p class="card-text">${vo.contents}</p>
		</div>
		<ul class="list-group list-group-flush">
			<li class="list-group-item">${vo.address}</li>
			<li class="list-group-item">${vo.homePage}</li>
			<li class="list-group-item">${vo.price}</li>
		</ul>
		
		<!-- 지도생성 -->
		<div id="map" style="width:500px;height:400px;"></div>
		
		
		
		
		<a href="/product/list">List</a>
		<a href="./update?productNum=${vo.productNum}">Update</a>
		<a href="./delete?productNum=${vo.productNum}">Delete</a>
		
	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=64cdb28bf8dab29f38f663d6acaaeb38"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.4478, 126.3725), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.4478, 126.3725); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>



</body>
</html>