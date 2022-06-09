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
<title>Insert title here</title>
</head>
<body>

	<div class="alert alert-success" role="alert">
		<h1>축제 업데이트</h1>
	</div>

	<form action="./update" method="post" enctype="multipart/form-data">
		<div class="mb-3">
			<input class="form-control" name="num" value="${vo.num}"
				type="hidden" aria-label="default input example"> <label
				for="exampleFormControlTextarea1" class="form-label">축제이름</label>
				<input class="form-control" name="name" value="${vo.name}" type="text"
				aria-label="default input example">
		</div>

		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">축제시작일</label>
			<input class="form-control" name="startDate"
				value="${vo.startDate}" type="text"
				aria-label="default input example">
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">축제종료일</label>
			<input class="form-control" name="finishDate"
				value="${vo.finishDate}" type="text"
				aria-label="default input example">
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">장소</label>
			<input class="form-control" name="location" value="${vo.location}"
				type="text" aria-label="default input example">
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">상세정보</label>
			<textarea class="form-control" name="detail"
				id="exampleFormControlTextarea1" rows="3" >${vo.detail}</textarea>
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">홈페이지</label>
			<input class="form-control" name="homePage" value="${vo.homePage}"
				type="text" aria-label="default input example">
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">관람가능 연령</label>
			<input class="form-control" name="age" value="${vo.age}"
				type="text" aria-label="default input example">
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">전화번호</label>
			<input class="form-control" name="phone" value="${vo.phone}"
				type="text" aria-label="default input example">
		</div>
		<div class="mb-3">
			<label for="formFile" class="form-label">파일 추가</label> <input
				class="form-control" type="file" id="formFile">
		</div>

		<button type="submit" class="btn btn-outline-secondary">수정완료</button>

	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>