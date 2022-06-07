<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/summernote.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


</head>
<body>

	<div class="container mt-4">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert" style="background-color: #0F172B !important;">
				<h4 class="text-center" style="text-transform: uppercase;color: #FEA116 !important;">여행지 등록</h4>
			</div>
		</div>

		<form action="./add" method="post" enctype="multipart/form-data">
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">id</label> <input
					type="text" class="form-control" id="id" name="id"
					value="${member.id}" readonly>

			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">대분류</label>
				<c:if test="${member.location eq 0}">
					<input type="text" class="form-control" name="largeCategory"
						value="서울" readonly>
					<label for="exampleInputPassword1" class="form-label mt-3">중분류</label>
					<select class="form-select" aria-label="Default select example"
						name="mediumCategory" id="mediumCategory">
						<option>선택해주세요</option>
						<option value="마포구">마포구</option>
						<option value="강남구">강남구</option>
						<option value="동대문구">동대문구</option>
					</select>
				</c:if>
				<c:if test="${member.location eq 1}">
					<input type="text" class="form-control" name="largeCategory"
						value="경기" readonly>
					<label for="exampleInputPassword1" class="form-label mt-3">중분류</label>
					<select class="form-select" aria-label="Default select example"
						name="mediumCategory" id="mediumCategory">
						<option>선택해주세요</option>
						<option value="인천">인천</option>
						<option value="수원">수원</option>
						<option value="파주">파주</option>
					</select>
				</c:if>
				<c:if test="${member.location eq 2}">
					<input type="text" class="form-control" name="largeCategory"
						value="강원" readonly>
					<label for="exampleInputPassword1" class="form-label mt-3">중분류</label>
					<select class="form-select" aria-label="Default select example"
						name="mediumCategory" id="mediumCategory">
						<option>선택해주세요</option>
						<option value="강릉">강릉</option>
						<option value="동해">동해</option>
						<option value="속초">속초</option>
					</select>
				</c:if>
				<c:if test="${member.location eq 3}">
					<input type="text" class="form-control" name="largeCategory"
						value="경상" readonly>
					<label for="exampleInputPassword1" class="form-label mt-3">중분류</label>
					<select class="form-select" aria-label="Default select example"
						name="mediumCategory" id="mediumCategory">
						<option>선택해주세요</option>
						<option value="부산">부산</option>
						<option value="경주">경주</option>
						<option value="문경">문경</option>
					</select>
				</c:if>
					<c:if test="${member.location eq 4}">
					<input type="text" class="form-control" name="largeCategory"
						value="전라" readonly>
					<label for="exampleInputPassword1" class="form-label mt-3">중분류</label>
					<select class="form-select" aria-label="Default select example"
						name="mediumCategory" id="mediumCategory">
						<option>선택해주세요</option>
						<option value="광주">광주</option>
						<option value="목포">목포</option>
						<option value="여수">여수</option>
					</select>
				</c:if>
						<c:if test="${member.location eq 5}">
					<input type="text" class="form-control" name="largeCategory"
						value="충청" readonly>
					<label for="exampleInputPassword1" class="form-label mt-3">중분류</label>
					<select class="form-select" aria-label="Default select example"
						name="mediumCategory" id="mediumCategory">
						<option>선택해주세요</option>
						<option value="대전">대전</option>
						<option value="단양">단양</option>
						<option value="제천">제천</option>
					</select>
				</c:if>
						<c:if test="${member.location eq 6}">
					<input type="text" class="form-control" name="largeCategory"
						value="제주" readonly>
					<label for="exampleInputPassword1" class="form-label mt-3">중분류</label>
					<select class="form-select" aria-label="Default select example"
						name="mediumCategory" id="mediumCategory">
						<option>선택해주세요</option>
						<option value="제주시">제주시</option>
						<option value="서귀포시">서귀포시</option>
						
					</select>
				</c:if>
				<!-- 			<select class="form-select" aria-label="Default select example" name="largeCategory" id="largeCategory">
				<option>선택해주세요</option>
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="강원">강원</option>
				<option value="경상">경상</option>
				<option value="전라">전라</option>
				<option value="충청">충청</option>
				<option value="제주">제주</option>
			</select> -->
			</div>
			<div class="mb-3" id="mediumCategoryResult"></div>
			<label for="exampleInputPassword1" class="form-label">소분류</label> <select
				class="form-select" aria-label="Default select example"
				name="smallCategory">
				<option>선택해주세요</option>
				<option value="가족과 함께">#가족과 함께</option>
				<option value="연인과 함께">#연인과 함께</option>
				<option value="나홀로 여행">#나홀로 여행</option>
				<option value="자연친화적인">#자연친화적인</option>
				<option value="힐링 여행">#힐링 여행</option>
				<option value="기타">#기타</option>
			</select>
			<div class="mb-3 mt-3">
				<label for="exampleInputPassword1" class="form-label mg">Name</label> <input
					type="text" class="form-control" id="name" name="name">
			</div>
			<!--  <div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Address</label>
				<input type="text" class="form-control" id="address" name="address">
			</div> -->
		
		                <input type="button" value="주소찾기" id="post">
		         
		   
		   <!-- 	<label for="exampleInputPassword1" class="form-label">주소</label> -->
		       <input type="text"  id="mainAddress" class="form-control" name="address" size="70" readonly>
		
			<div class="mb-3 mt-3">
				<label for="exampleInputPassword1" class="form-label">Price</label>
				<select class="form-select" aria-label="Default select example"
					name="price1" id="price">
					<option>선택해주세요</option>
					<option class="dataPrice" value="0">무료 입장</option>
					<option class="dataPrice" value="1">가격 직접 입력</option>
				</select>


			</div>

			<div id="priceResult"></div>

			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Contents</label>
				<textarea class="form-control" id="contents" name="contents"></textarea>
			</div>

			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">HomePage</label>
				<input type="text" class="form-control" id="homePage"
					name="homePage">
			</div>

			<div id="fileResult"></div>

			<div>
				<button type="button" id="fileAddBtn"
					class="col-1 btn btn-primary mt-3">FileAdd</button>
			</div>
			<div class="row justify-content-end mt-5">
				<button type="submit" class="col-1 btn btn-primary ">Submit</button>
			</div>
		</form>
	</div>
	
	<script type="text/javascript" src="../resources/js/product.js"></script>
	<script type="text/javascript" src="../resources/js/fileAdd.js"></script>
	<script type="text/javascript" src="../resources/js/summernote.js"></script>
	<script type="text/javascript">
		fileAdd(0);
		summernote("contents","");
		priceSelect();
	</script>


</body>
</html>