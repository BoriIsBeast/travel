<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<form action="./add" method="post" enctype="multipart/form-data">
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">id</label>
			<input type="text" class="form-control" id="id" name="id" value="master" readonly>
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">대분류</label>
			<select name="largeCategory" id="largeCategory">
				<option>선택해주세요</option>
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="강원">강원</option>
				<option value="경상">경상</option>
				<option value="전라">전라</option>
				<option value="충청">충청</option>
				<option value="제주">제주</option>
			</select>
		</div>
		<div class="mb-3" id="mediumCategoryResult">
	
		</div>
		<div class="mb-3" id="smallCategoryResult">
			
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Name</label>
			<input type="text" class="form-control" id="name" name="name">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Address</label>
			<input type="text" class="form-control" id="address" name="address">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Price</label>
			<input type="text" class="form-control" id="price" name="price">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Contents</label>
			<input type="text" class="form-control" id="contents" name="contents">
		</div>
	
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">HomePage</label>
			<input type="text" class="form-control" id="homePage" name="homePage">
		</div>
		
		<div id="fileResult">
		
		
		
		</div>
		
		<div>
			<button type="button" id="fileAddBtn">FileAdd</button>
		</div>
		<div class="row justify-content-end mt-5">
			<button type="submit" class="col-1 btn btn-primary ">Submit</button>
		</div>
	</form>
	
	<script type="text/javascript" src="../resources/js/product.js"></script>
	<script type="text/javascript" src="../resources/js/fileAdd.js"></script>
	<script type="text/javascript">
		mediumCategorySelect();
		fileAdd(0);
	</script>
	

</body>
</html>