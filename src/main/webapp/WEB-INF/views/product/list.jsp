<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<style type="text/css">
.card-img-top {
	height:30rem;
 	object-fit: cover;
}
</style>
</head>
<body>

<div class="container">
<h1>ListPage</h1>
	<div class="row row-cols-5 row-cols-md-5 g-4">
		<c:forEach items="${vo}" var="list" >
			<div class="col">
				<div class="card">
					<img src="/resources/upload/product/${list.filesVOs[0].fileName}" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title"><a href="./detail?productNum=${list.productNum}">${list.name}</a></h5>
						<p class="card-text">${list.address}</p>
						<p class="card-text">${list.price}</p>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
	<div class="row mt-4">
		<a href="/product/add">Add</a>
	</div>

</div>

</body>
</html>